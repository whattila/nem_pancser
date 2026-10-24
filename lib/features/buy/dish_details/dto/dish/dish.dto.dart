import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/dish/dish.dart';

part 'dish.dto.freezed.dart';
part 'dish.dto.g.dart';

@freezed
abstract class DishDto with _$DishDto {
  const factory DishDto({
    required String id,
    required String name,
    required int price,
    required String description,
    @Default([]) List<String> allergens,
    @Default(0) int pancserCreditValue,
    required String? imageUrl,
    required bool hasSideDishOption,
    required bool hasMeatOption,
    required bool hasSaladExtraOption
  }) = _DishDto;

  factory DishDto.fromJson(Map<String, Object?> json) => _$DishDtoFromJson(json);
}

extension DishDtoToModel on DishDto {
  Dish toModel() {
    return Dish(
      id: id,
      name: name,
      price: price,
      description: description,
      allergens: allergens,
      pancserCreditValue: pancserCreditValue,
      imageUrl: imageUrl,
    );
  }
}

