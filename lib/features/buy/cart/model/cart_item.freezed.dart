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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItem);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartItem()';
}


}

/// @nodoc
class $CartItemCopyWith<$Res>  {
$CartItemCopyWith(CartItem _, $Res Function(CartItem) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Pizza value)?  pizza,TResult Function( OtherDish value)?  otherDish,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that);case OtherDish() when otherDish != null:
return otherDish(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Pizza value)  pizza,required TResult Function( OtherDish value)  otherDish,}){
final _that = this;
switch (_that) {
case Pizza():
return pizza(_that);case OtherDish():
return otherDish(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Pizza value)?  pizza,TResult? Function( OtherDish value)?  otherDish,}){
final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that);case OtherDish() when otherDish != null:
return otherDish(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PizzaSize size,  PizzaSauce sauce,  List<PizzaTopping> toppings)?  pizza,TResult Function( DishHeader dish)?  otherDish,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that.size,_that.sauce,_that.toppings);case OtherDish() when otherDish != null:
return otherDish(_that.dish);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PizzaSize size,  PizzaSauce sauce,  List<PizzaTopping> toppings)  pizza,required TResult Function( DishHeader dish)  otherDish,}) {final _that = this;
switch (_that) {
case Pizza():
return pizza(_that.size,_that.sauce,_that.toppings);case OtherDish():
return otherDish(_that.dish);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PizzaSize size,  PizzaSauce sauce,  List<PizzaTopping> toppings)?  pizza,TResult? Function( DishHeader dish)?  otherDish,}) {final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that.size,_that.sauce,_that.toppings);case OtherDish() when otherDish != null:
return otherDish(_that.dish);case _:
  return null;

}
}

}

/// @nodoc


class Pizza extends CartItem {
  const Pizza({required this.size, required this.sauce, final  List<PizzaTopping> toppings = const []}): _toppings = toppings,super._();
  

 final  PizzaSize size;
 final  PizzaSauce sauce;
 final  List<PizzaTopping> _toppings;
@JsonKey() List<PizzaTopping> get toppings {
  if (_toppings is EqualUnmodifiableListView) return _toppings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_toppings);
}


/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PizzaCopyWith<Pizza> get copyWith => _$PizzaCopyWithImpl<Pizza>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pizza&&const DeepCollectionEquality().equals(other.size, size)&&const DeepCollectionEquality().equals(other.sauce, sauce)&&const DeepCollectionEquality().equals(other._toppings, _toppings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(size),const DeepCollectionEquality().hash(sauce),const DeepCollectionEquality().hash(_toppings));

@override
String toString() {
  return 'CartItem.pizza(size: $size, sauce: $sauce, toppings: $toppings)';
}


}

/// @nodoc
abstract mixin class $PizzaCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory $PizzaCopyWith(Pizza value, $Res Function(Pizza) _then) = _$PizzaCopyWithImpl;
@useResult
$Res call({
 PizzaSize size, PizzaSauce sauce, List<PizzaTopping> toppings
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
@pragma('vm:prefer-inline') $Res call({Object? size = freezed,Object? sauce = freezed,Object? toppings = null,}) {
  return _then(Pizza(
size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as PizzaSize,sauce: freezed == sauce ? _self.sauce : sauce // ignore: cast_nullable_to_non_nullable
as PizzaSauce,toppings: null == toppings ? _self._toppings : toppings // ignore: cast_nullable_to_non_nullable
as List<PizzaTopping>,
  ));
}


}

/// @nodoc


class OtherDish extends CartItem {
  const OtherDish({required this.dish}): super._();
  

 final  DishHeader dish;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherDishCopyWith<OtherDish> get copyWith => _$OtherDishCopyWithImpl<OtherDish>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherDish&&(identical(other.dish, dish) || other.dish == dish));
}


@override
int get hashCode => Object.hash(runtimeType,dish);

@override
String toString() {
  return 'CartItem.otherDish(dish: $dish)';
}


}

/// @nodoc
abstract mixin class $OtherDishCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory $OtherDishCopyWith(OtherDish value, $Res Function(OtherDish) _then) = _$OtherDishCopyWithImpl;
@useResult
$Res call({
 DishHeader dish
});


$DishHeaderCopyWith<$Res> get dish;

}
/// @nodoc
class _$OtherDishCopyWithImpl<$Res>
    implements $OtherDishCopyWith<$Res> {
  _$OtherDishCopyWithImpl(this._self, this._then);

  final OtherDish _self;
  final $Res Function(OtherDish) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dish = null,}) {
  return _then(OtherDish(
dish: null == dish ? _self.dish : dish // ignore: cast_nullable_to_non_nullable
as DishHeader,
  ));
}

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishHeaderCopyWith<$Res> get dish {
  
  return $DishHeaderCopyWith<$Res>(_self.dish, (value) {
    return _then(_self.copyWith(dish: value));
  });
}
}

// dart format on
