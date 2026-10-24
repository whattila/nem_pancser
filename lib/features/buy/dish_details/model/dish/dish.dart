import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';

@freezed
abstract class Dish with _$Dish {
  const factory Dish({
    required String id,
    required String name,
    required int price,
    required String description,
    @Default([]) List<String> allergens,
    @Default(0) int pancserCreditValue,
    required String? imageUrl
  }) = _Dish;
}