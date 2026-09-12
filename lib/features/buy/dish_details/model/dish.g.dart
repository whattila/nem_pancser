// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Dish _$DishFromJson(Map<String, dynamic> json) => _Dish(
  id: json['id'] as String,
  name: json['name'] as String,
  price: (json['price'] as num).toInt(),
  description: json['description'] as String,
  allergens:
      (json['allergens'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  pancserCredit: (json['pancserCredit'] as num?)?.toInt() ?? 0,
  imageUrl: json['imageUrl'] as String,
);

Map<String, dynamic> _$DishToJson(_Dish instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'price': instance.price,
  'description': instance.description,
  'allergens': instance.allergens,
  'pancserCredit': instance.pancserCredit,
  'imageUrl': instance.imageUrl,
};
