import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_category.event.freezed.dart';

@freezed
sealed class DishCategoryEvent with _$DishCategoryEvent {
  const factory DishCategoryEvent.loadingRequested() = DishCategoryLoadingRequested;
}
