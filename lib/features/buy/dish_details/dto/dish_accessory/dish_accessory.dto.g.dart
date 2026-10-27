// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_accessory.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DishAccessoryDto _$DishAccessoryDtoFromJson(Map<String, dynamic> json) =>
    _DishAccessoryDto(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$DishAccessoryTypeEnumMap, json['type']),
      price: (json['price'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DishAccessoryDtoToJson(_DishAccessoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$DishAccessoryTypeEnumMap[instance.type]!,
      'price': instance.price,
    };

const _$DishAccessoryTypeEnumMap = {
  DishAccessoryType.sideDish: 'sideDish',
  DishAccessoryType.meatOption: 'meatOption',
  DishAccessoryType.saladExtra: 'saladExtra',
};
