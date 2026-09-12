import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';
part 'dish.g.dart';

@freezed
abstract class Dish with _$Dish {
  const factory Dish({
    required String id,
    required String name,
    required int price,
    required String description,
    @Default([]) List<String> allergens,
    @Default(0) int pancserCredit,
    required String imageUrl
  }) = _Dish;

  factory Dish.fromJson(Map<String, Object?> json) => _$DishFromJson(json);
}