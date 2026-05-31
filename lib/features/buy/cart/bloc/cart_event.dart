import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/item.dart';

part 'cart_event.freezed.dart';

@freezed
sealed class CartEvent with _$CartEvent {
  const factory CartEvent.opened() = CartOpened;
  const factory CartEvent.itemDeleted({
    required Item item
  }) = CartItemDeleted;
}