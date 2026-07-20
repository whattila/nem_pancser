import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dto.dart';

part 'registration.dto.g.dart';
part 'registration.dto.freezed.dart';

@freezed
abstract class RegistrationDto with _$RegistrationDto {
  @JsonSerializable(explicitToJson: true)
  const factory RegistrationDto({
    required String username,
    required String email,
    required String password,
    required String familyName,
    required String givenName,
    required String phoneNumber,
    required AddressDto address
  }) = _RegistrationDto;

  factory RegistrationDto.fromJson(Map<String, dynamic> json) => _$RegistrationDtoFromJson(json);
}