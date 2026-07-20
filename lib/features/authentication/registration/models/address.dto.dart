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
    String? staircase,
    String? floor,
    String? door,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) => _$AddressDtoFromJson(json);
}
