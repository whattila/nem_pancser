import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/cart_item.dart';

part 'cart_state.freezed.dart';

@freezed
sealed class CartState with _$CartState {
  const factory CartState.initial() = CartInitialState;

  const factory CartState.inUse({
    @Default([]) List<CartItem> items
  }) = CartInUseState;

  const factory CartState.error() = CartErrorState;
}

extension CartNormalStateX on CartInUseState {
  int get price
      => items.fold(0, (sum, item) => sum + item.price);
}