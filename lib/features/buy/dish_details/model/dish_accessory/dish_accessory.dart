import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_accessory.freezed.dart';

@freezed
sealed class DishAccessory with _$DishAccessory {
  const factory DishAccessory.sideDish({
    required String id,
    required String name,
    @Default(0) int price,
  }) = SideDish;

  const factory DishAccessory.meatOption({
    required String id,
    required String name,
    @Default(0) int price,
  }) = MeatOption;

  const factory DishAccessory.saladExtra({
    required String id,
    required String name,
    @Default(0) int price,
  }) = SaladExtra;
}
