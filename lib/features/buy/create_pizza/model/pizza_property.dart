import 'package:freezed_annotation/freezed_annotation.dart';

part 'pizza_property.freezed.dart';

@freezed
sealed class PizzaProperty with _$PizzaProperty {
  const factory PizzaProperty.size({
    required String value,
    @Default(0) int price,
  }) = PizzaSize;

  const factory PizzaProperty.sauce({
    required String value,
    @Default(0) int price,
  }) = PizzaSauce;

  const factory PizzaProperty.topping({
    required String value,
    @Default(0) int price,
  }) = PizzaTopping;
}