// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DishDto _$DishDtoFromJson(Map<String, dynamic> json) => _DishDto(
  id: json['id'] as String,
  name: json['name'] as String,
  price: (json['price'] as num).toInt(),
  description: json['description'] as String? ?? '',
  allergens:
      (json['allergens'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  pancserCreditValue: (json['pancserCreditValue'] as num?)?.toInt() ?? 0,
  imageUrl: json['imageUrl'] as String? ?? '',
  hasSideDishOption: json['hasSideDishOption'] as bool? ?? false,
  hasMeatOption: json['hasMeatOption'] as bool? ?? false,
  hasSaladExtraOption: json['hasSaladExtraOption'] as bool? ?? false,
);

Map<String, dynamic> _$DishDtoToJson(_DishDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'price': instance.price,
  'description': instance.description,
  'allergens': instance.allergens,
  'pancserCreditValue': instance.pancserCreditValue,
  'imageUrl': instance.imageUrl,
  'hasSideDishOption': instance.hasSideDishOption,
  'hasMeatOption': instance.hasMeatOption,
  'hasSaladExtraOption': instance.hasSaladExtraOption,
};
