import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/buy/category/bloc/dish_category.event.dart';
import 'package:nem_pancser/features/buy/category/bloc/dish_category.state.dart';
import 'package:nem_pancser/features/buy/repository/dish_repository.dart';

class DishCategoryBloc extends Bloc<DishCategoryEvent, DishCategoryState> {
  DishCategoryBloc(this._dishRepository) : super(const DishCategoryInitial()) {
    on<DishCategoryLoadingRequested>(_onLoadingRequested);
  }

  final DishRepository _dishRepository;

  Future<void> _onLoadingRequested(
    DishCategoryLoadingRequested event,
    Emitter<DishCategoryState> emit,
  ) async {
    emit(const DishCategoryLoading());
    try {
      final categories = await _dishRepository.getDishCategories();
      emit(DishCategorySuccess(categories: categories));
    } catch (e) {
      emit(const DishCategoryError());
    }
  }
}
