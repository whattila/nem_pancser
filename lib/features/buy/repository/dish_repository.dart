import 'dart:developer' as developer;

import 'package:nem_pancser/features/buy/category/model/dish_category.dart';
import 'package:nem_pancser/features/buy/create_pizza/model/pizza_property.dart';
import 'package:nem_pancser/features/buy/dish_details/model/dish/dish.dart';
import 'package:nem_pancser/features/buy/dish_details/model/dish_accessory/dish_accessory.dart';
import 'package:nem_pancser/features/buy/dish_list/model/dish_header.dart';
import 'package:nem_pancser/shared/services/pancser_client/pancser_client.dart';

import '../dish_details/dto/dish/dish.dto.dart';
import '../dish_details/dto/dish_accessory/dish_accessory.dto.dart';
import '../dish_details/dto/dish_accessory/dish_accessory_type.dart';

class DishRepository {
  DishRepository(this._pancserClient);

  final PancserClient _pancserClient;

  final List<DishCategory> _dishCategories = [];
  final List<SideDish> _sideDishes = [];
  final List<MeatOption> _meatOptions = [];
  final List<SaladExtra> _saladExtras = [];
  final List<PizzaSize> _pizzaSizes = [];
  final List<PizzaSauce> _pizzaSauces = [];
  final List<PizzaTopping> _pizzaToppings = [];

  Future<List<DishCategory>> getDishCategories() async {
    if (_dishCategories.isEmpty) {
      final categories = await _pancserClient.getDishCategories();
      _dishCategories.addAll(categories);
    }
    return _dishCategories;
  }

  Future<List<DishHeader>> getDishesByCategory(String categoryId) async =>
      await _pancserClient.getDishesByCategory(id: categoryId);

  Future<(Dish, List<SideDish>?, List<MeatOption>?, List<SaladExtra>?)> getDish(String dishId) async {
      final dishDto = await _pancserClient.getDish(id: dishId);
      List<SideDish>? sideDishes;
      List<MeatOption>? meatOptions;
      List<SaladExtra>? saladExtras;

      if (dishDto.hasSideDishOption) {
        if (_sideDishes.isEmpty) {
          await _getDishOptions();
        }
        sideDishes = _sideDishes;
      }
      if (dishDto.hasMeatOption) {
        if (_meatOptions.isEmpty) {
          await _getDishOptions();
        }
        meatOptions = _meatOptions;
      }
      if (dishDto.hasSaladExtraOption) {
        if (_saladExtras.isEmpty) {
          final dtos = await _pancserClient.getSaladExtras();
          _saladExtras.addAll(dtos.map((dto) => dto.toModel() as SaladExtra));
        }
        saladExtras = _saladExtras;
      }

      return (dishDto.toModel(), sideDishes, meatOptions, saladExtras);
  }

  Future<void> _getDishOptions() async {
    final dtos = await _pancserClient.getDishOptions();
    for (final dto in dtos) {
      switch (dto.type) {
        case DishAccessoryType.sideDish:
          _sideDishes.add(dto.toModel() as SideDish);
          break;
        case DishAccessoryType.meatOption:
          _meatOptions.add(dto.toModel() as MeatOption);
          break;
        default:
          developer.log('Invalid dish accessory type: ${dto.type}');
      }
    }
  }

  List<PizzaProperty> getAllPizzaProperties() =>
    [
      PizzaSize(value: '26 cm', price: 3795),
      PizzaSize(value: '32 cm', price: 4195),
      PizzaSize(value: '45 cm', price: 7495),
      PizzaSauce(value: 'Paradicsomszósz'),
      PizzaSauce(value: 'Fokhagymás-tejfölös alap'),
      PizzaTopping(value: 'Mozzarella sajt'),
      PizzaTopping(value: 'Sonka'),
      PizzaTopping(value: 'Szalámi'),
      PizzaTopping(value: 'Szalonna'),
      PizzaTopping(value: 'Ananász'),
      PizzaTopping(value: 'Hagyma'),
      PizzaTopping(value: 'Kukorica'),
      PizzaTopping(value: 'Borsó'),
      PizzaTopping(value: 'Gomba'),
      PizzaTopping(value: 'Pepperoni paprika csípős'),
      PizzaTopping(value: 'Édes paprika'),
      PizzaTopping(value: 'Chili bab'),
      PizzaTopping(value: 'Brokkoli'),
      PizzaTopping(value: 'Oliva bogyó'),
      PizzaTopping(value: 'Parmezán', price: 540),
      PizzaTopping(value: 'Cheddar sajt', price: 550),
      PizzaTopping(value: 'Dupla mozzarella sajt', price: 550),
      PizzaTopping(value: 'Sonka dupla', price: 520),
      PizzaTopping(value: 'Szalámi dupla', price: 520),
      PizzaTopping(value: 'Szalonna dupla', price: 520),
      PizzaTopping(value: 'Juhtúró', price: 550),
      PizzaTopping(value: 'Márvány sajt', price: 550),
      PizzaTopping(value: 'Füstölt sajt', price: 550),
      PizzaTopping(value: 'Trappista sajt', price: 550),
      PizzaTopping(value: 'Kolbász', price: 520),
      PizzaTopping(value: 'Füstölt tarja', price: 520),
      PizzaTopping(value: 'Bolognai ragu', price: 590),
      PizzaTopping(value: 'Milánói ragu', price: 590),
      PizzaTopping(value: 'Tárkonyos csirkeragu', price: 650),
      PizzaTopping(value: 'Feta sajt', price: 550),
      PizzaTopping(value: 'Ananász dupla', price: 450),
      PizzaTopping(value: 'Hagyma dupla', price: 450),
      PizzaTopping(value: 'Kukorica dupla', price: 450),
      PizzaTopping(value: 'Borsó dupla', price: 450),
      PizzaTopping(value: 'Gomba dupla', price: 450),
      PizzaTopping(value: 'Pepperoni paprika dupla', price: 450),
      PizzaTopping(value: 'Édes paprika dupla', price: 450),
      PizzaTopping(value: 'Chili bab dupla', price: 450),
      PizzaTopping(value: 'Brokkoli dupla', price: 450),
      PizzaTopping(value: 'Oliva bogyó dupla', price: 450),
      PizzaTopping(value: 'Tenger gyümölcsei', price: 890),
      PizzaTopping(value: 'Kagyló', price: 890),
      PizzaTopping(value: 'Garnélarák', price: 890),
      PizzaTopping(value: 'Tonhal', price: 890),
      PizzaTopping(value: 'Paradicsomszeletek', price: 450),
      PizzaTopping(value: 'Lilahagyma', price: 450),
      PizzaTopping(value: 'Főtt tojás', price: 180),
      PizzaTopping(value: '2 db Főtt tojás', price: 360),
      PizzaTopping(value: '3 db Főtt tojás', price: 540),
      PizzaTopping(value: '4 db Főtt tojás', price: 720),
      PizzaTopping(value: 'Tükörtojás', price: 180),
      PizzaTopping(value: '2 db Tükörtojás', price: 360),
      PizzaTopping(value: '3 db Tükörtojás', price: 540),
      PizzaTopping(value: '4 db Tükörtojás', price: 720)
    ];
}