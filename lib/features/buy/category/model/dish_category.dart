import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_category.freezed.dart';
part 'dish_category.g.dart';

@freezed
abstract class DishCategory with _$DishCategory {
  const factory DishCategory({
    required String id,
    required String name
  }) = _DishCategory;

  factory DishCategory.fromJson(Map<String, Object?> json) => _$DishCategoryFromJson(json);
}