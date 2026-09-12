import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nem_pancser/features/buy/dish_list/model/dish_header.dart';

import '../../create_pizza/model/pizza_property.dart';

part 'cart_item.freezed.dart';

@freezed
sealed class CartItem with _$CartItem {
  const CartItem._();

  const factory CartItem.pizza({
    required PizzaSize size,
    required PizzaSauce sauce,
    @Default([]) List<PizzaTopping> toppings,
  }) = Pizza;

  const factory CartItem.otherDish({
    required DishHeader dish
  }) = OtherDish;

  int get price =>
      when(
        pizza: (size, sauce, toppings)
          => size.price + sauce.price + toppings.fold(0, (sum, t) => sum + t.price),
        otherDish: (dish)
          => dish.price
      );

  String get displayPrice => '$price Ft';

  String get displayName =>
      when(
        pizza: (size, _, _) => 'Pizza, ${size.value}',
        otherDish: (dish) => dish.name
      );
}