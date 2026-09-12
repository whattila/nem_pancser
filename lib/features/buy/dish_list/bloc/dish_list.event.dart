import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nem_pancser/features/buy/category/model/dish_category.dart';

part 'dish_list.event.freezed.dart';

@freezed
sealed class DishListEvent with _$DishListEvent {
  const factory DishListEvent.loadingRequested({
    required DishCategory category
  }) = DishListLoadingRequested;
}