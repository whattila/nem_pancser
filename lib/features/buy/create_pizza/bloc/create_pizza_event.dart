import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nem_pancser/features/buy/create_pizza/model/pizza_property.dart';

part 'create_pizza_event.freezed.dart';

@freezed
sealed class CreatePizzaEvent with _$CreatePizzaEvent {

  const factory CreatePizzaEvent.started() = CreatePizzaStarted;

  const factory CreatePizzaEvent.selectedSizeChanged({
    required PizzaSize newSize
  }) = CreatePizzaSelectedSizeChanged;

  const factory CreatePizzaEvent.selectedSauceChanged({
    required PizzaSauce newSauce
  }) = CreatePizzaSelectedSauceChanged;

  const factory CreatePizzaEvent.toppingSelectionChanged({
    required PizzaTopping topping
  }) = CreatePizzaToppingSelectionChanged;

  const factory CreatePizzaEvent.finished() = CreatePizzaFinished;

  const factory CreatePizzaEvent.finishedNoToppingConfirmed() = CreatePizzaFinishedNoToppingConfirmed;

  const factory CreatePizzaEvent.noToppingCanceled() = CreatePizzaNoToppingCanceled;

}
