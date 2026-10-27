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
  final List<Size> _pizzaSizes = [];
  final List<Sauce> _pizzaSauces = [];
  final List<Topping> _pizzaToppings = [];

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
      Size(value: '26 cm', price: 3795),
      Size(value: '32 cm', price: 4195),
      Size(value: '45 cm', price: 7495),
      Sauce(value: 'Paradicsomszósz'),
      Sauce(value: 'Fokhagymás-tejfölös alap'),
      Topping(value: 'Mozzarella sajt'),
      Topping(value: 'Sonka'),
      Topping(value: 'Szalámi'),
      Topping(value: 'Szalonna'),
      Topping(value: 'Ananász'),
      Topping(value: 'Hagyma'),
      Topping(value: 'Kukorica'),
      Topping(value: 'Borsó'),
      Topping(value: 'Gomba'),
      Topping(value: 'Pepperoni paprika csípős'),
      Topping(value: 'Édes paprika'),
      Topping(value: 'Chili bab'),
      Topping(value: 'Brokkoli'),
      Topping(value: 'Oliva bogyó'),
      Topping(value: 'Parmezán', price: 540),
      Topping(value: 'Cheddar sajt', price: 550),
      Topping(value: 'Dupla mozzarella sajt', price: 550),
      Topping(value: 'Sonka dupla', price: 520),
      Topping(value: 'Szalámi dupla', price: 520),
      Topping(value: 'Szalonna dupla', price: 520),
      Topping(value: 'Juhtúró', price: 550),
      Topping(value: 'Márvány sajt', price: 550),
      Topping(value: 'Füstölt sajt', price: 550),
      Topping(value: 'Trappista sajt', price: 550),
      Topping(value: 'Kolbász', price: 520),
      Topping(value: 'Füstölt tarja', price: 520),
      Topping(value: 'Bolognai ragu', price: 590),
      Topping(value: 'Milánói ragu', price: 590),
      Topping(value: 'Tárkonyos csirkeragu', price: 650),
      Topping(value: 'Feta sajt', price: 550),
      Topping(value: 'Ananász dupla', price: 450),
      Topping(value: 'Hagyma dupla', price: 450),
      Topping(value: 'Kukorica dupla', price: 450),
      Topping(value: 'Borsó dupla', price: 450),
      Topping(value: 'Gomba dupla', price: 450),
      Topping(value: 'Pepperoni paprika dupla', price: 450),
      Topping(value: 'Édes paprika dupla', price: 450),
      Topping(value: 'Chili bab dupla', price: 450),
      Topping(value: 'Brokkoli dupla', price: 450),
      Topping(value: 'Oliva bogyó dupla', price: 450),
      Topping(value: 'Tenger gyümölcsei', price: 890),
      Topping(value: 'Kagyló', price: 890),
      Topping(value: 'Garnélarák', price: 890),
      Topping(value: 'Tonhal', price: 890),
      Topping(value: 'Paradicsomszeletek', price: 450),
      Topping(value: 'Lilahagyma', price: 450),
      Topping(value: 'Főtt tojás', price: 180),
      Topping(value: '2 db Főtt tojás', price: 360),
      Topping(value: '3 db Főtt tojás', price: 540),
      Topping(value: '4 db Főtt tojás', price: 720),
      Topping(value: 'Tükörtojás', price: 180),
      Topping(value: '2 db Tükörtojás', price: 360),
      Topping(value: '3 db Tükörtojás', price: 540),
      Topping(value: '4 db Tükörtojás', price: 720)
    ];
}