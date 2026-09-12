import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_header.freezed.dart';
part 'dish_header.g.dart';

@freezed
abstract class DishHeader with _$DishHeader {
  const factory DishHeader({
    required String id,
    required String name,
    required int price
  }) = _DishHeader;

  factory DishHeader.fromJson(Map<String, Object?> json) => _$DishHeaderFromJson(json);
}