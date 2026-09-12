import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/services/pancser_client/pancser_client.dart';
import 'dish_list.event.dart';
import 'dish_list.state.dart';

class DishListBloc extends Bloc<DishListEvent, DishListState> {
  DishListBloc(this._pancserClient) : super(const DishListInitial()) {
    on<DishListLoadingRequested>(_onLoadingRequested);
  }

  final PancserClient _pancserClient;

  Future<void> _onLoadingRequested(
    DishListLoadingRequested event,
    Emitter<DishListState> emit,
  ) async {
    emit(const DishListLoading());
    try {
      final dishes = await _pancserClient.getDishesByCategory(id: event.category.id);
      emit(DishListSuccess(dishes: dishes));
    } catch (e) {
      emit(const DishListError());
    }
  }
}