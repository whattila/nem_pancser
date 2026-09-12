// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DishHeader _$DishHeaderFromJson(Map<String, dynamic> json) => _DishHeader(
  id: json['id'] as String,
  name: json['name'] as String,
  price: (json['price'] as num).toInt(),
);

Map<String, dynamic> _$DishHeaderToJson(_DishHeader instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
