import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/dish_repository.dart';
import 'dish_list.event.dart';
import 'dish_list.state.dart';

class DishListBloc extends Bloc<DishListEvent, DishListState> {
  DishListBloc(this._dishRepository) : super(const DishListInitial()) {
    on<DishListLoadingRequested>(_onLoadingRequested);
  }

  final DishRepository _dishRepository;

  Future<void> _onLoadingRequested(
    DishListLoadingRequested event,
    Emitter<DishListState> emit,
  ) async {
    emit(const DishListLoading());
    try {
      final dishes = await _dishRepository.getDishesByCategory(event.category.id);
      emit(DishListSuccess(dishes: dishes));
    } catch (e) {
      emit(const DishListError());
    }
  }
}
