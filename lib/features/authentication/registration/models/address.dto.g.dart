// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => _AddressDto(
  city: json['city'] as String,
  place: json['place'] as String,
  number: json['number'] as String,
  staircase: json['staircase'] as String?,
  floor: json['floor'] as String?,
  door: json['door'] as String?,
  bell: json['bell'] as String?,
);

Map<String, dynamic> _$AddressDtoToJson(_AddressDto instance) =>
    <String, dynamic>{
      'city': instance.city,
      'place': instance.place,
      'number': instance.number,
      'staircase': ?optionalFieldToJson(instance.staircase),
      'floor': ?optionalFieldToJson(instance.floor),
      'door': ?optionalFieldToJson(instance.door),
      'bell': ?optionalFieldToJson(instance.bell),
    };
