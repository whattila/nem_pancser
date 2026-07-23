// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegistrationDto _$RegistrationDtoFromJson(Map<String, dynamic> json) =>
    _RegistrationDto(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      familyName: json['familyName'] as String,
      givenName: json['givenName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      subscribeToNewsletter: json['subscribeToNewsletter'] as bool,
    );

Map<String, dynamic> _$RegistrationDtoToJson(_RegistrationDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'familyName': instance.familyName,
      'givenName': instance.givenName,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address.toJson(),
      'subscribeToNewsletter': instance.subscribeToNewsletter,
    };
