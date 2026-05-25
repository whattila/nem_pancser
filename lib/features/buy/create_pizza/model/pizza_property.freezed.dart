// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pizza_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PizzaProperty {

 String get value; int get price;
/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PizzaPropertyCopyWith<PizzaProperty> get copyWith => _$PizzaPropertyCopyWithImpl<PizzaProperty>(this as PizzaProperty, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PizzaProperty&&(identical(other.value, value) || other.value == value)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,value,price);

@override
String toString() {
  return 'PizzaProperty(value: $value, price: $price)';
}


}

/// @nodoc
abstract mixin class $PizzaPropertyCopyWith<$Res>  {
  factory $PizzaPropertyCopyWith(PizzaProperty value, $Res Function(PizzaProperty) _then) = _$PizzaPropertyCopyWithImpl;
@useResult
$Res call({
 String value, int price
});




}
/// @nodoc
class _$PizzaPropertyCopyWithImpl<$Res>
    implements $PizzaPropertyCopyWith<$Res> {
  _$PizzaPropertyCopyWithImpl(this._self, this._then);

  final PizzaProperty _self;
  final $Res Function(PizzaProperty) _then;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? price = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PizzaProperty].
extension PizzaPropertyPatterns on PizzaProperty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PizzaSize value)?  size,TResult Function( PizzaSauce value)?  sauce,TResult Function( PizzaTopping value)?  topping,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PizzaSize() when size != null:
return size(_that);case PizzaSauce() when sauce != null:
return sauce(_that);case PizzaTopping() when topping != null:
return topping(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PizzaSize value)  size,required TResult Function( PizzaSauce value)  sauce,required TResult Function( PizzaTopping value)  topping,}){
final _that = this;
switch (_that) {
case PizzaSize():
return size(_that);case PizzaSauce():
return sauce(_that);case PizzaTopping():
return topping(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PizzaSize value)?  size,TResult? Function( PizzaSauce value)?  sauce,TResult? Function( PizzaTopping value)?  topping,}){
final _that = this;
switch (_that) {
case PizzaSize() when size != null:
return size(_that);case PizzaSauce() when sauce != null:
return sauce(_that);case PizzaTopping() when topping != null:
return topping(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value,  int price)?  size,TResult Function( String value,  int price)?  sauce,TResult Function( String value,  int price)?  topping,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PizzaSize() when size != null:
return size(_that.value,_that.price);case PizzaSauce() when sauce != null:
return sauce(_that.value,_that.price);case PizzaTopping() when topping != null:
return topping(_that.value,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value,  int price)  size,required TResult Function( String value,  int price)  sauce,required TResult Function( String value,  int price)  topping,}) {final _that = this;
switch (_that) {
case PizzaSize():
return size(_that.value,_that.price);case PizzaSauce():
return sauce(_that.value,_that.price);case PizzaTopping():
return topping(_that.value,_that.price);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value,  int price)?  size,TResult? Function( String value,  int price)?  sauce,TResult? Function( String value,  int price)?  topping,}) {final _that = this;
switch (_that) {
case PizzaSize() when size != null:
return size(_that.value,_that.price);case PizzaSauce() when sauce != null:
return sauce(_that.value,_that.price);case PizzaTopping() when topping != null:
return topping(_that.value,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class PizzaSize implements PizzaProperty {
  const PizzaSize({required this.value, this.price = 0});
  

@override final  String value;
@override@JsonKey() final  int price;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PizzaSizeCopyWith<PizzaSize> get copyWith => _$PizzaSizeCopyWithImpl<PizzaSize>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PizzaSize&&(identical(other.value, value) || other.value == value)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,value,price);

@override
String toString() {
  return 'PizzaProperty.size(value: $value, price: $price)';
}


}

/// @nodoc
abstract mixin class $PizzaSizeCopyWith<$Res> implements $PizzaPropertyCopyWith<$Res> {
  factory $PizzaSizeCopyWith(PizzaSize value, $Res Function(PizzaSize) _then) = _$PizzaSizeCopyWithImpl;
@override @useResult
$Res call({
 String value, int price
});




}
/// @nodoc
class _$PizzaSizeCopyWithImpl<$Res>
    implements $PizzaSizeCopyWith<$Res> {
  _$PizzaSizeCopyWithImpl(this._self, this._then);

  final PizzaSize _self;
  final $Res Function(PizzaSize) _then;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? price = null,}) {
  return _then(PizzaSize(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class PizzaSauce implements PizzaProperty {
  const PizzaSauce({required this.value, this.price = 0});
  

@override final  String value;
@override@JsonKey() final  int price;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PizzaSauceCopyWith<PizzaSauce> get copyWith => _$PizzaSauceCopyWithImpl<PizzaSauce>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PizzaSauce&&(identical(other.value, value) || other.value == value)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,value,price);

@override
String toString() {
  return 'PizzaProperty.sauce(value: $value, price: $price)';
}


}

/// @nodoc
abstract mixin class $PizzaSauceCopyWith<$Res> implements $PizzaPropertyCopyWith<$Res> {
  factory $PizzaSauceCopyWith(PizzaSauce value, $Res Function(PizzaSauce) _then) = _$PizzaSauceCopyWithImpl;
@override @useResult
$Res call({
 String value, int price
});




}
/// @nodoc
class _$PizzaSauceCopyWithImpl<$Res>
    implements $PizzaSauceCopyWith<$Res> {
  _$PizzaSauceCopyWithImpl(this._self, this._then);

  final PizzaSauce _self;
  final $Res Function(PizzaSauce) _then;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? price = null,}) {
  return _then(PizzaSauce(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class PizzaTopping implements PizzaProperty {
  const PizzaTopping({required this.value, this.price = 0});
  

@override final  String value;
@override@JsonKey() final  int price;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PizzaToppingCopyWith<PizzaTopping> get copyWith => _$PizzaToppingCopyWithImpl<PizzaTopping>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PizzaTopping&&(identical(other.value, value) || other.value == value)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,value,price);

@override
String toString() {
  return 'PizzaProperty.topping(value: $value, price: $price)';
}


}

/// @nodoc
abstract mixin class $PizzaToppingCopyWith<$Res> implements $PizzaPropertyCopyWith<$Res> {
  factory $PizzaToppingCopyWith(PizzaTopping value, $Res Function(PizzaTopping) _then) = _$PizzaToppingCopyWithImpl;
@override @useResult
$Res call({
 String value, int price
});




}
/// @nodoc
class _$PizzaToppingCopyWithImpl<$Res>
    implements $PizzaToppingCopyWith<$Res> {
  _$PizzaToppingCopyWithImpl(this._self, this._then);

  final PizzaTopping _self;
  final $Res Function(PizzaTopping) _then;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? price = null,}) {
  return _then(PizzaTopping(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
