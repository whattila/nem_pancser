import 'package:freezed_annotation/freezed_annotation.dart';

import '../create_pizza/model/pizza_property.dart';

part 'item.freezed.dart';

@freezed
sealed class Item with _$Item {

  const factory Item.pizza({
    required PizzaSize size,
    required PizzaSauce sauce,
    @Default([]) List<PizzaTopping> toppings,
  }) = Pizza;

}

extension PizzaX on Pizza {
  int get price =>
      size.price + sauce.price + toppings.fold(0, (sum, t) => sum + t.price);
}