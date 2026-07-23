import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.dto.g.dart';
part 'address.dto.freezed.dart';

@freezed
abstract class AddressDto with _$AddressDto {
  @JsonSerializable(includeIfNull: false)
  const factory AddressDto({
    required String city,
    required String place,
    required String number,
    @JsonKey(toJson: optionalFieldToJson)
    String? staircase,
    @JsonKey(toJson: optionalFieldToJson)
    String? floor,
    @JsonKey(toJson: optionalFieldToJson)
    String? door,
    @JsonKey(toJson: optionalFieldToJson)
    String? bell
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) => _$AddressDtoFromJson(json);
}

String? optionalFieldToJson(String? value) =>
    value == null || value.isEmpty ? null : value;
