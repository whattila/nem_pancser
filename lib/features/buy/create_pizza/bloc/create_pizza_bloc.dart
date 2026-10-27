import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/buy/create_pizza/bloc/create_pizza_event.dart';
import 'package:nem_pancser/features/buy/create_pizza/bloc/create_pizza_state.dart';
import 'package:nem_pancser/features/buy/create_pizza/model/pizza_property.dart';

import '../../cart/model/cart_item.dart';
import '../../cart/service/cart.dart';
import '../../repository/dish_repository.dart';

class CreatePizzaBloc extends Bloc<CreatePizzaEvent, CreatePizzaState> {
  CreatePizzaBloc(this._itemsRepository, this._cart)
    : super(const CreatePizzaInitialState()) {
        on<CreatePizzaStarted>(_onCreatePizzaStarted);
        on<CreatePizzaSelectedSizeChanged>(_onSizeChanged);
        on<CreatePizzaSelectedSauceChanged>(_onSauceChanged);
        on<CreatePizzaToppingSelectionChanged>(_onToppingSelectionChanged);
        on<CreatePizzaFinished>(_onFinished);
        on<CreatePizzaFinishedNoToppingConfirmed>(_onFinishedNoToppingConfirmed);
        on<CreatePizzaNoToppingCanceled>(_onNoToppingCanceled);
    }

  final DishRepository _itemsRepository;
  final Cart _cart;

  FutureOr<void> _onCreatePizzaStarted(CreatePizzaStarted event, Emitter<CreatePizzaState> emit) {
    emit(const CreatePizzaLoadingState());
    final allProperties = _itemsRepository.getAllPizzaProperties();

    final sizes = allProperties.whereType<Size>().toList();
    final sauces = allProperties.whereType<Sauce>().toList();
    final toppings = allProperties.whereType<Topping>().toList();

    emit(CreatePizzaInProgressState(
      sizes: sizes,
      sauces: sauces,
      toppings: toppings,
    ));
  }

  void _onSizeChanged(CreatePizzaSelectedSizeChanged event, Emitter<CreatePizzaState> emit) {
    emit((state as CreatePizzaInProgressState).copyWith(selectedSize: event.newSize));
  }

  void _onSauceChanged(CreatePizzaSelectedSauceChanged event, Emitter<CreatePizzaState> emit) {
    emit((state as CreatePizzaInProgressState).copyWith(selectedSauce: event.newSauce));
  }

  void _onToppingSelectionChanged(CreatePizzaToppingSelectionChanged event, Emitter<CreatePizzaState> emit) {
    final inProgressState = state as CreatePizzaInProgressState;
    final updatedToppingSelection = Set<Topping>.from(inProgressState.selectedToppings);

    if (!updatedToppingSelection.add(event.topping)) {
      updatedToppingSelection.remove(event.topping);
    }

    emit(inProgressState.copyWith(selectedToppings: updatedToppingSelection));
  }

  void _onFinished(CreatePizzaFinished event, Emitter<CreatePizzaState> emit) {
    final inProgressState = state as CreatePizzaInProgressState;
    if (inProgressState.selectedToppings.isEmpty) {
      emit(inProgressState.copyWith(confirmNoTopping: true));
    }
    else {
      final pizza = Pizza(
        size: inProgressState.selectedSize!,
        sauce: inProgressState.selectedSauce!,
        toppings: inProgressState.selectedToppings,
        amount: 1 // TODO: add actual amount
      );
      _cart.add(pizza);
      emit(const CreatePizzaDoneState());
    }
  }

  void _onFinishedNoToppingConfirmed(CreatePizzaFinishedNoToppingConfirmed event, Emitter<CreatePizzaState> emit) {
    final inProgressState = state as CreatePizzaInProgressState;
    final pizza = Pizza(
      size: inProgressState.selectedSize!,
      sauce: inProgressState.selectedSauce!,
      amount: 1 // TODO: add actual amount
    );
    _cart.add(pizza);
    emit(const CreatePizzaDoneState());
  }

  void _onNoToppingCanceled(CreatePizzaNoToppingCanceled event, Emitter<CreatePizzaState> emit) {
    emit((state as CreatePizzaInProgressState).copyWith(confirmNoTopping: false));
  }
}
