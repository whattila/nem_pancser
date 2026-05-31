import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/item.dart';

part 'cart_state.freezed.dart';

@freezed
sealed class CartState with _$CartState {
  const factory CartState.initial() = CartInitialState;

  const factory CartState.normal({
    @Default([]) List<Item> items
  }) = CartNormalState;

  const factory CartState.error() = CartErrorState;
}

extension CartNormalStateX on CartNormalState {
  int get price
      => items.fold(0, (sum, item) => sum + item.price);
}