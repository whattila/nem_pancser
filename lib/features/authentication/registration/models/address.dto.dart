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
    @JsonKey(toJson: _optionalFieldToJson)
    String? staircase,
    @JsonKey(toJson: _optionalFieldToJson)
    String? floor,
    @JsonKey(toJson: _optionalFieldToJson)
    String? door,
    @JsonKey(toJson: _optionalFieldToJson)
    String? bell
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) => _$AddressDtoFromJson(json);

  static String? _optionalFieldToJson(String value) =>
      value.isEmpty ? null : value;
}
