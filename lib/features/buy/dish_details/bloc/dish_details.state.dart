import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nem_pancser/features/buy/dish_details/model/dish_accessory/dish_accessory.dart';

import '../model/dish/dish.dart';

part 'dish_details.state.freezed.dart';

@freezed
sealed class DishDetailsState with _$DishDetailsState {
  const factory DishDetailsState.initial() = DishDetailsInitial;

  const factory DishDetailsState.loading() = DishDetailsLoading;

  const factory DishDetailsState.inProgress({
    required Dish dish,
    List<SideDish>? sideDishes,
    SideDish? selectedSideDish,
    List<MeatOption>? meatOptions,
    MeatOption? selectedMeatOption,
    List<SaladExtra>? saladExtras,
    @Default({}) Set<SaladExtra> selectedSaladExtras,
    @Default(1) int amount,
    String? errorMessage
  }) = DishDetailsInProgress;

  const factory DishDetailsState.error() = DishDetailsError;

  const factory DishDetailsState.done() = DishDetailsDone;
}

extension DishDetailsInProgressX on DishDetailsInProgress {
  int get price =>
      amount *
      (dish.price +
      (selectedSideDish?.price ?? 0) +
      (selectedMeatOption?.price ?? 0) +
      (selectedSaladExtras.fold(0, (sum, extra) => sum + extra.price)));

  bool get isEverythingSelected =>
      sideDishes == null || selectedSideDish != null &&
      meatOptions == null || selectedMeatOption != null;
}