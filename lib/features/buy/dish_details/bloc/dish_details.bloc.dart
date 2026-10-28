import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cart/model/cart_item.dart';
import '../../cart/service/cart.dart';
import '../../repository/dish_repository.dart';
import '../model/dish_accessory/dish_accessory.dart';
import 'dish_details.event.dart';
import 'dish_details.state.dart';

class DishDetailsBloc extends Bloc<DishDetailsEvent, DishDetailsState> {
  DishDetailsBloc(this._dishRepository, this._cart) : super(const DishDetailsInitial()) {
    on<DishDetailsLoadingRequested>(_onLoadingRequested);
    on<DishDetailsSelectedSideDishChanged>(_onSelectedSideDishChanged);
    on<DishDetailsSelectedMeatOptionChanged>(_onSelectedMeatOptionChanged);
    on<DishDetailsSaladExtraSelectionChanged>(_onSaladExtraSelectionChanged);
    on<DishDetailsFinished>(_onFinished);
    on<DishDetailsAmountIncreased>(_onAmountIncreased);
    on<DishDetailsAmountDecreased>(_onAmountDecreased);
  }

  final DishRepository _dishRepository;
  final Cart _cart;

  Future<void> _onLoadingRequested(DishDetailsLoadingRequested event, Emitter<DishDetailsState> emit) async {
    emit(const DishDetailsLoading());
    try {
      final (dish, sideDishes, meatOptions, saladExtras) = await _dishRepository.getDish(event.header.id);
      emit(DishDetailsInProgress(
        dish: dish,
        sideDishes: sideDishes,
        meatOptions: meatOptions,
        saladExtras: saladExtras
      ));
    } catch (e) {
      emit(const DishDetailsError());
    }
  }

  void _onSelectedSideDishChanged(DishDetailsSelectedSideDishChanged event, Emitter<DishDetailsState> emit) {
    emit((state as DishDetailsInProgress).copyWith(selectedSideDish: event.sideDish));
  }

  void _onSelectedMeatOptionChanged(DishDetailsSelectedMeatOptionChanged event, Emitter<DishDetailsState> emit) {
    emit((state as DishDetailsInProgress).copyWith(selectedMeatOption: event.meatOption));
  }

  void _onSaladExtraSelectionChanged(DishDetailsSaladExtraSelectionChanged event, Emitter<DishDetailsState> emit) {
    final inProgressState = state as DishDetailsInProgress;
    final updatedSaladExtras = Set<SaladExtra>.from(inProgressState.selectedSaladExtras);

    if (!updatedSaladExtras.add(event.saladExtra)) {
      updatedSaladExtras.remove(event.saladExtra);
    }

    emit(inProgressState.copyWith(selectedSaladExtras: updatedSaladExtras));
  }

  void _onAmountIncreased(DishDetailsAmountIncreased event, Emitter<DishDetailsState> emit) {
    emit((state as DishDetailsInProgress).copyWith(amount: (state as DishDetailsInProgress).amount + 1));
  }

  void _onAmountDecreased(DishDetailsAmountDecreased event, Emitter<DishDetailsState> emit) {
    if ((state as DishDetailsInProgress).amount > 1) {
      emit((state as DishDetailsInProgress).copyWith(amount: (state as DishDetailsInProgress).amount - 1));
    }
  }

  void _onFinished(DishDetailsFinished event, Emitter<DishDetailsState> emit) {
    final inProgressState = state as DishDetailsInProgress;

    if (inProgressState.isSideDishSelected && inProgressState.isMeatOptionSelected) {
      late CartItem dish;

      if (inProgressState.saladExtras != null) {
        dish = Salad(
            dish: inProgressState.dish,
            selectedSaladExtras: inProgressState.selectedSaladExtras,
            amount: inProgressState.amount
        );
      }
      else {
        dish = DishWithOptions(
            dish: inProgressState.dish,
            selectedSideDish: inProgressState.selectedSideDish,
            selectedMeatOption: inProgressState.selectedMeatOption,
            amount: inProgressState.amount
        );
      }

      _cart.add(dish);
      emit(const DishDetailsDone());
    }
    else {
      final errorMessages = [
        if (!inProgressState.isSideDishSelected) 'köretet',
        if (!inProgressState.isMeatOptionSelected) 'húsfélét'
      ];
      emit((state as DishDetailsInProgress).copyWith(errorMessage: 'Válassz ${errorMessages.join(', ')}!'));
      emit((state as DishDetailsInProgress).copyWith(errorMessage: null));
    }
  }
}
