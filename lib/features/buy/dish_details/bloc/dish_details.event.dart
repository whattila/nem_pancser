import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dish_list/model/dish_header.dart';
import '../model/dish_accessory/dish_accessory.dart';

part 'dish_details.event.freezed.dart';

@freezed
sealed class DishDetailsEvent with _$DishDetailsEvent {
  const factory DishDetailsEvent.loadingRequested({
    required DishHeader header
  }) = DishDetailsLoadingRequested;

  const factory DishDetailsEvent.selectedSideDishChanged({
    required SideDish? sideDish
  }) = DishDetailsSelectedSideDishChanged;

  const factory DishDetailsEvent.selectedMeatOptionChanged({
    required MeatOption? meatOption
  }) = DishDetailsSelectedMeatOptionChanged;

  const factory DishDetailsEvent.saladExtraSelectionChanged({
    required SaladExtra saladExtra
  }) = DishDetailsSaladExtraSelectionChanged;

  const factory DishDetailsEvent.amountIncreased() = DishDetailsAmountIncreased;

  const factory DishDetailsEvent.amountDecreased() = DishDetailsAmountDecreased;

  const factory DishDetailsEvent.finished() = DishDetailsFinished;
}