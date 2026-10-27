// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartItem {

 int get amount;
/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemCopyWith<CartItem> get copyWith => _$CartItemCopyWithImpl<CartItem>(this as CartItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItem&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'CartItem(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $CartItemCopyWith<$Res>  {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) _then) = _$CartItemCopyWithImpl;
@useResult
$Res call({
 int amount
});




}
/// @nodoc
class _$CartItemCopyWithImpl<$Res>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._self, this._then);

  final CartItem _self;
  final $Res Function(CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItem].
extension CartItemPatterns on CartItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Pizza value)?  pizza,TResult Function( DishWithOptions value)?  dishWithOptions,TResult Function( Salad value)?  salad,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that);case DishWithOptions() when dishWithOptions != null:
return dishWithOptions(_that);case Salad() when salad != null:
return salad(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Pizza value)  pizza,required TResult Function( DishWithOptions value)  dishWithOptions,required TResult Function( Salad value)  salad,}){
final _that = this;
switch (_that) {
case Pizza():
return pizza(_that);case DishWithOptions():
return dishWithOptions(_that);case Salad():
return salad(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Pizza value)?  pizza,TResult? Function( DishWithOptions value)?  dishWithOptions,TResult? Function( Salad value)?  salad,}){
final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that);case DishWithOptions() when dishWithOptions != null:
return dishWithOptions(_that);case Salad() when salad != null:
return salad(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Size size,  Sauce sauce,  Set<Topping> toppings,  int amount)?  pizza,TResult Function( Dish dish,  SideDish? selectedSideDish,  MeatOption? selectedMeatOption,  int amount)?  dishWithOptions,TResult Function( Dish dish,  Set<SaladExtra> selectedSaladExtras,  int amount)?  salad,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that.size,_that.sauce,_that.toppings,_that.amount);case DishWithOptions() when dishWithOptions != null:
return dishWithOptions(_that.dish,_that.selectedSideDish,_that.selectedMeatOption,_that.amount);case Salad() when salad != null:
return salad(_that.dish,_that.selectedSaladExtras,_that.amount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Size size,  Sauce sauce,  Set<Topping> toppings,  int amount)  pizza,required TResult Function( Dish dish,  SideDish? selectedSideDish,  MeatOption? selectedMeatOption,  int amount)  dishWithOptions,required TResult Function( Dish dish,  Set<SaladExtra> selectedSaladExtras,  int amount)  salad,}) {final _that = this;
switch (_that) {
case Pizza():
return pizza(_that.size,_that.sauce,_that.toppings,_that.amount);case DishWithOptions():
return dishWithOptions(_that.dish,_that.selectedSideDish,_that.selectedMeatOption,_that.amount);case Salad():
return salad(_that.dish,_that.selectedSaladExtras,_that.amount);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Size size,  Sauce sauce,  Set<Topping> toppings,  int amount)?  pizza,TResult? Function( Dish dish,  SideDish? selectedSideDish,  MeatOption? selectedMeatOption,  int amount)?  dishWithOptions,TResult? Function( Dish dish,  Set<SaladExtra> selectedSaladExtras,  int amount)?  salad,}) {final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that.size,_that.sauce,_that.toppings,_that.amount);case DishWithOptions() when dishWithOptions != null:
return dishWithOptions(_that.dish,_that.selectedSideDish,_that.selectedMeatOption,_that.amount);case Salad() when salad != null:
return salad(_that.dish,_that.selectedSaladExtras,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class Pizza extends CartItem {
  const Pizza({required this.size, required this.sauce, final  Set<Topping> toppings = const {}, required this.amount}): _toppings = toppings,super._();
  

 final  Size size;
 final  Sauce sauce;
 final  Set<Topping> _toppings;
@JsonKey() Set<Topping> get toppings {
  if (_toppings is EqualUnmodifiableSetView) return _toppings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_toppings);
}

@override final  int amount;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PizzaCopyWith<Pizza> get copyWith => _$PizzaCopyWithImpl<Pizza>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pizza&&const DeepCollectionEquality().equals(other.size, size)&&const DeepCollectionEquality().equals(other.sauce, sauce)&&const DeepCollectionEquality().equals(other._toppings, _toppings)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(size),const DeepCollectionEquality().hash(sauce),const DeepCollectionEquality().hash(_toppings),amount);

@override
String toString() {
  return 'CartItem.pizza(size: $size, sauce: $sauce, toppings: $toppings, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $PizzaCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory $PizzaCopyWith(Pizza value, $Res Function(Pizza) _then) = _$PizzaCopyWithImpl;
@override @useResult
$Res call({
 Size size, Sauce sauce, Set<Topping> toppings, int amount
});




}
/// @nodoc
class _$PizzaCopyWithImpl<$Res>
    implements $PizzaCopyWith<$Res> {
  _$PizzaCopyWithImpl(this._self, this._then);

  final Pizza _self;
  final $Res Function(Pizza) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? size = freezed,Object? sauce = freezed,Object? toppings = null,Object? amount = null,}) {
  return _then(Pizza(
size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as Size,sauce: freezed == sauce ? _self.sauce : sauce // ignore: cast_nullable_to_non_nullable
as Sauce,toppings: null == toppings ? _self._toppings : toppings // ignore: cast_nullable_to_non_nullable
as Set<Topping>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class DishWithOptions extends CartItem {
  const DishWithOptions({required this.dish, this.selectedSideDish, this.selectedMeatOption, required this.amount}): super._();
  

 final  Dish dish;
 final  SideDish? selectedSideDish;
 final  MeatOption? selectedMeatOption;
@override final  int amount;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishWithOptionsCopyWith<DishWithOptions> get copyWith => _$DishWithOptionsCopyWithImpl<DishWithOptions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishWithOptions&&(identical(other.dish, dish) || other.dish == dish)&&const DeepCollectionEquality().equals(other.selectedSideDish, selectedSideDish)&&const DeepCollectionEquality().equals(other.selectedMeatOption, selectedMeatOption)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,dish,const DeepCollectionEquality().hash(selectedSideDish),const DeepCollectionEquality().hash(selectedMeatOption),amount);

@override
String toString() {
  return 'CartItem.dishWithOptions(dish: $dish, selectedSideDish: $selectedSideDish, selectedMeatOption: $selectedMeatOption, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $DishWithOptionsCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory $DishWithOptionsCopyWith(DishWithOptions value, $Res Function(DishWithOptions) _then) = _$DishWithOptionsCopyWithImpl;
@override @useResult
$Res call({
 Dish dish, SideDish? selectedSideDish, MeatOption? selectedMeatOption, int amount
});


$DishCopyWith<$Res> get dish;

}
/// @nodoc
class _$DishWithOptionsCopyWithImpl<$Res>
    implements $DishWithOptionsCopyWith<$Res> {
  _$DishWithOptionsCopyWithImpl(this._self, this._then);

  final DishWithOptions _self;
  final $Res Function(DishWithOptions) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dish = null,Object? selectedSideDish = freezed,Object? selectedMeatOption = freezed,Object? amount = null,}) {
  return _then(DishWithOptions(
dish: null == dish ? _self.dish : dish // ignore: cast_nullable_to_non_nullable
as Dish,selectedSideDish: freezed == selectedSideDish ? _self.selectedSideDish : selectedSideDish // ignore: cast_nullable_to_non_nullable
as SideDish?,selectedMeatOption: freezed == selectedMeatOption ? _self.selectedMeatOption : selectedMeatOption // ignore: cast_nullable_to_non_nullable
as MeatOption?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishCopyWith<$Res> get dish {
  
  return $DishCopyWith<$Res>(_self.dish, (value) {
    return _then(_self.copyWith(dish: value));
  });
}
}

/// @nodoc


class Salad extends CartItem {
  const Salad({required this.dish, final  Set<SaladExtra> selectedSaladExtras = const {}, required this.amount}): _selectedSaladExtras = selectedSaladExtras,super._();
  

 final  Dish dish;
 final  Set<SaladExtra> _selectedSaladExtras;
@JsonKey() Set<SaladExtra> get selectedSaladExtras {
  if (_selectedSaladExtras is EqualUnmodifiableSetView) return _selectedSaladExtras;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedSaladExtras);
}

@override final  int amount;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaladCopyWith<Salad> get copyWith => _$SaladCopyWithImpl<Salad>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Salad&&(identical(other.dish, dish) || other.dish == dish)&&const DeepCollectionEquality().equals(other._selectedSaladExtras, _selectedSaladExtras)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,dish,const DeepCollectionEquality().hash(_selectedSaladExtras),amount);

@override
String toString() {
  return 'CartItem.salad(dish: $dish, selectedSaladExtras: $selectedSaladExtras, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SaladCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory $SaladCopyWith(Salad value, $Res Function(Salad) _then) = _$SaladCopyWithImpl;
@override @useResult
$Res call({
 Dish dish, Set<SaladExtra> selectedSaladExtras, int amount
});


$DishCopyWith<$Res> get dish;

}
/// @nodoc
class _$SaladCopyWithImpl<$Res>
    implements $SaladCopyWith<$Res> {
  _$SaladCopyWithImpl(this._self, this._then);

  final Salad _self;
  final $Res Function(Salad) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dish = null,Object? selectedSaladExtras = null,Object? amount = null,}) {
  return _then(Salad(
dish: null == dish ? _self.dish : dish // ignore: cast_nullable_to_non_nullable
as Dish,selectedSaladExtras: null == selectedSaladExtras ? _self._selectedSaladExtras : selectedSaladExtras // ignore: cast_nullable_to_non_nullable
as Set<SaladExtra>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishCopyWith<$Res> get dish {
  
  return $DishCopyWith<$Res>(_self.dish, (value) {
    return _then(_self.copyWith(dish: value));
  });
}
}

// dart format on
