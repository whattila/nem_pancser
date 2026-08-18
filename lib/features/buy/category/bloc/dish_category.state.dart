import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nem_pancser/features/buy/category/model/dish_category.dart';

part 'dish_category.state.freezed.dart';

@freezed
sealed class DishCategoryState with _$DishCategoryState {
  const factory DishCategoryState.initial() = DishCategoryInitial;
  const factory DishCategoryState.loading() = DishCategoryLoading;
  const factory DishCategoryState.success({
    required List<DishCategory> categories,
  }) = DishCategorySuccess;
  const factory DishCategoryState.error() = DishCategoryError;
}
