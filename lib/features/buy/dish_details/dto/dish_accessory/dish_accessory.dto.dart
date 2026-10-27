import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/dish_accessory/dish_accessory.dart';
import 'dish_accessory_type.dart';

part 'dish_accessory.dto.freezed.dart';
part 'dish_accessory.dto.g.dart';

@freezed
abstract class DishAccessoryDto with _$DishAccessoryDto {
  const factory DishAccessoryDto({
    required String id,
    required String name,
    required DishAccessoryType type,
    @Default(0) int price,
  }) = _DishAccessoryDto;

  factory DishAccessoryDto.fromJson(Map<String, Object?> json) => _$DishAccessoryDtoFromJson(json);
}

extension DishAccessoryDtoToModel on DishAccessoryDto {
  DishAccessory toModel() {
    switch (type) {
      case DishAccessoryType.sideDish:
        return SideDish(
          id: id,
          name: name,
          price: price,
        );
      case DishAccessoryType.meatOption:
        return MeatOption(
          id: id,
          name: name,
          price: price,
        );
      case DishAccessoryType.saladExtra:
        return SaladExtra(
          id: id,
          name: name,
          price: price,
        );
    }
  }
}