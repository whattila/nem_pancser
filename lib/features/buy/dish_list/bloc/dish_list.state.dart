import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/dish_header.dart';

part 'dish_list.state.freezed.dart';

@freezed
sealed class DishListState with _$DishListState {
  const factory DishListState.initial() = DishListInitial;
  const factory DishListState.loading() = DishListLoading;
  const factory DishListState.success({
    required List<DishHeader> dishes,
  }) = DishListSuccess;
  const factory DishListState.error() = DishListError;
}