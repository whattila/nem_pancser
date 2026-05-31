// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Item {

 PizzaSize get size; PizzaSauce get sauce; List<PizzaTopping> get toppings;
/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCopyWith<Item> get copyWith => _$ItemCopyWithImpl<Item>(this as Item, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Item&&const DeepCollectionEquality().equals(other.size, size)&&const DeepCollectionEquality().equals(other.sauce, sauce)&&const DeepCollectionEquality().equals(other.toppings, toppings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(size),const DeepCollectionEquality().hash(sauce),const DeepCollectionEquality().hash(toppings));

@override
String toString() {
  return 'Item(size: $size, sauce: $sauce, toppings: $toppings)';
}


}

/// @nodoc
abstract mixin class $ItemCopyWith<$Res>  {
  factory $ItemCopyWith(Item value, $Res Function(Item) _then) = _$ItemCopyWithImpl;
@useResult
$Res call({
 PizzaSize size, PizzaSauce sauce, List<PizzaTopping> toppings
});




}
/// @nodoc
class _$ItemCopyWithImpl<$Res>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._self, this._then);

  final Item _self;
  final $Res Function(Item) _then;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? size = freezed,Object? sauce = freezed,Object? toppings = null,}) {
  return _then(_self.copyWith(
size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as PizzaSize,sauce: freezed == sauce ? _self.sauce : sauce // ignore: cast_nullable_to_non_nullable
as PizzaSauce,toppings: null == toppings ? _self.toppings : toppings // ignore: cast_nullable_to_non_nullable
as List<PizzaTopping>,
  ));
}

}


/// Adds pattern-matching-related methods to [Item].
extension ItemPatterns on Item {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Pizza value)?  pizza,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Pizza value)  pizza,}){
final _that = this;
switch (_that) {
case Pizza():
return pizza(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Pizza value)?  pizza,}){
final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PizzaSize size,  PizzaSauce sauce,  List<PizzaTopping> toppings)?  pizza,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that.size,_that.sauce,_that.toppings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PizzaSize size,  PizzaSauce sauce,  List<PizzaTopping> toppings)  pizza,}) {final _that = this;
switch (_that) {
case Pizza():
return pizza(_that.size,_that.sauce,_that.toppings);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PizzaSize size,  PizzaSauce sauce,  List<PizzaTopping> toppings)?  pizza,}) {final _that = this;
switch (_that) {
case Pizza() when pizza != null:
return pizza(_that.size,_that.sauce,_that.toppings);case _:
  return null;

}
}

}

/// @nodoc


class Pizza extends Item {
  const Pizza({required this.size, required this.sauce, final  List<PizzaTopping> toppings = const []}): _toppings = toppings,super._();
  

@override final  PizzaSize size;
@override final  PizzaSauce sauce;
 final  List<PizzaTopping> _toppings;
@override@JsonKey() List<PizzaTopping> get toppings {
  if (_toppings is EqualUnmodifiableListView) return _toppings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_toppings);
}


/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'Item.pizza(size: $size, sauce: $sauce, toppings: $toppings)';
}


}

/// @nodoc
abstract mixin class $PizzaCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory $PizzaCopyWith(Pizza value, $Res Function(Pizza) _then) = _$PizzaCopyWithImpl;
@override @useResult
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

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? size = freezed,Object? sauce = freezed,Object? toppings = null,}) {
  return _then(Pizza(
size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as PizzaSize,sauce: freezed == sauce ? _self.sauce : sauce // ignore: cast_nullable_to_non_nullable
as PizzaSauce,toppings: null == toppings ? _self._toppings : toppings // ignore: cast_nullable_to_non_nullable
as List<PizzaTopping>,
  ));
}


}

// dart format on
