import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_pizza/model/pizza_property.dart';
import '../../dish_details/model/dish/dish.dart';
import '../../dish_details/model/dish_accessory/dish_accessory.dart';

part 'cart_item.freezed.dart';

@freezed
sealed class CartItem with _$CartItem {
  const CartItem._();

  const factory CartItem.pizza({
    required Size size,
    required Sauce sauce,
    @Default({}) Set<Topping> toppings,
    required int amount
  }) = Pizza;

  const factory CartItem.dishWithOptions({
    required Dish dish,
    SideDish? selectedSideDish,
    MeatOption? selectedMeatOption,
    required int amount
  }) = DishWithOptions;

  const factory CartItem.salad({
    required Dish dish,
    @Default({}) Set<SaladExtra> selectedSaladExtras,
    required int amount
  }) = Salad;

  int get price =>
      amount *
      when(
        pizza: (size, sauce, toppings, _)
          => size.price + sauce.price + toppings.fold(0, (sum, t) => sum + t.price),
        dishWithOptions: (dish, selectedSideDish, selectedMeatOption, _)
          => dish.price + (selectedSideDish?.price ?? 0) + (selectedMeatOption?.price ?? 0),
        salad: (dish, selectedSaladExtras, _)
          => dish.price + selectedSaladExtras.fold(0, (sum, se) => sum + se.price)
      );

  String get displayName =>
      when(
        pizza: (size, _, _, _) => 'Pizza, ${size.value}',
        dishWithOptions: (dish, _, _, _) => dish.name,
        salad: (dish, _, _) => dish.name
      );

  List<String> get extraDetails =>
      when(
        pizza: (_, sauce, toppings, _)
          => [
            'Alap: ${sauce.value}',
            'Feltétek: ${toppings.map((t) => t.value).join(', ')}'
          ],
        dishWithOptions: (dish, selectedSideDish, selectedMeatOption, _)
          => [
            if (selectedSideDish != null) 'Köret: ${selectedSideDish.name}',
            if (selectedMeatOption != null) 'Húsféle: ${selectedMeatOption.name}'
          ],
        salad: (dish, selectedSaladExtras, _)
          => ['+ ${selectedSaladExtras.map((se) => se.name).join(', ')}']
      );
}