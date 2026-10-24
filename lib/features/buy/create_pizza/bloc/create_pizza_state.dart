import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nem_pancser/features/buy/create_pizza/model/pizza_property.dart';

part 'create_pizza_state.freezed.dart';

@freezed
sealed class CreatePizzaState with _$CreatePizzaState {
  const factory CreatePizzaState.initial() = CreatePizzaInitialState;

  const factory CreatePizzaState.loading() = CreatePizzaLoadingState;

  const factory CreatePizzaState.inProgress({
    required List<PizzaSize> sizes,
    PizzaSize? selectedSize,
    required List<PizzaSauce> sauces,
    PizzaSauce? selectedSauce,
    required List<PizzaTopping> toppings,
    @Default({}) Set<PizzaTopping> selectedToppings,
    @Default(false) bool confirmNoTopping
  }) = CreatePizzaInProgressState;

  const factory CreatePizzaState.error(
      String message,
      ) = CreatePizzaErrorState;

  const factory CreatePizzaState.done() = CreatePizzaDoneState;
}

extension CreatePizzaInProgressStateX on CreatePizzaInProgressState {
  int get price =>
      (selectedSize?.price ?? 0) +
      (selectedSauce?.price ?? 0) +
      selectedToppings.fold(0, (sum, topping) => sum + topping.price);
}