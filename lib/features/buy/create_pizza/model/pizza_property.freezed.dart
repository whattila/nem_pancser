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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Size value)?  size,TResult Function( Sauce value)?  sauce,TResult Function( Topping value)?  topping,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Size() when size != null:
return size(_that);case Sauce() when sauce != null:
return sauce(_that);case Topping() when topping != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Size value)  size,required TResult Function( Sauce value)  sauce,required TResult Function( Topping value)  topping,}){
final _that = this;
switch (_that) {
case Size():
return size(_that);case Sauce():
return sauce(_that);case Topping():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Size value)?  size,TResult? Function( Sauce value)?  sauce,TResult? Function( Topping value)?  topping,}){
final _that = this;
switch (_that) {
case Size() when size != null:
return size(_that);case Sauce() when sauce != null:
return sauce(_that);case Topping() when topping != null:
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
case Size() when size != null:
return size(_that.value,_that.price);case Sauce() when sauce != null:
return sauce(_that.value,_that.price);case Topping() when topping != null:
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
case Size():
return size(_that.value,_that.price);case Sauce():
return sauce(_that.value,_that.price);case Topping():
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
case Size() when size != null:
return size(_that.value,_that.price);case Sauce() when sauce != null:
return sauce(_that.value,_that.price);case Topping() when topping != null:
return topping(_that.value,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class Size implements PizzaProperty {
  const Size({required this.value, this.price = 0});
  

@override final  String value;
@override@JsonKey() final  int price;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SizeCopyWith<Size> get copyWith => _$SizeCopyWithImpl<Size>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Size&&(identical(other.value, value) || other.value == value)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,value,price);

@override
String toString() {
  return 'PizzaProperty.size(value: $value, price: $price)';
}


}

/// @nodoc
abstract mixin class $SizeCopyWith<$Res> implements $PizzaPropertyCopyWith<$Res> {
  factory $SizeCopyWith(Size value, $Res Function(Size) _then) = _$SizeCopyWithImpl;
@override @useResult
$Res call({
 String value, int price
});




}
/// @nodoc
class _$SizeCopyWithImpl<$Res>
    implements $SizeCopyWith<$Res> {
  _$SizeCopyWithImpl(this._self, this._then);

  final Size _self;
  final $Res Function(Size) _then;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? price = null,}) {
  return _then(Size(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Sauce implements PizzaProperty {
  const Sauce({required this.value, this.price = 0});
  

@override final  String value;
@override@JsonKey() final  int price;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SauceCopyWith<Sauce> get copyWith => _$SauceCopyWithImpl<Sauce>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sauce&&(identical(other.value, value) || other.value == value)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,value,price);

@override
String toString() {
  return 'PizzaProperty.sauce(value: $value, price: $price)';
}


}

/// @nodoc
abstract mixin class $SauceCopyWith<$Res> implements $PizzaPropertyCopyWith<$Res> {
  factory $SauceCopyWith(Sauce value, $Res Function(Sauce) _then) = _$SauceCopyWithImpl;
@override @useResult
$Res call({
 String value, int price
});




}
/// @nodoc
class _$SauceCopyWithImpl<$Res>
    implements $SauceCopyWith<$Res> {
  _$SauceCopyWithImpl(this._self, this._then);

  final Sauce _self;
  final $Res Function(Sauce) _then;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? price = null,}) {
  return _then(Sauce(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Topping implements PizzaProperty {
  const Topping({required this.value, this.price = 0});
  

@override final  String value;
@override@JsonKey() final  int price;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToppingCopyWith<Topping> get copyWith => _$ToppingCopyWithImpl<Topping>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Topping&&(identical(other.value, value) || other.value == value)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,value,price);

@override
String toString() {
  return 'PizzaProperty.topping(value: $value, price: $price)';
}


}

/// @nodoc
abstract mixin class $ToppingCopyWith<$Res> implements $PizzaPropertyCopyWith<$Res> {
  factory $ToppingCopyWith(Topping value, $Res Function(Topping) _then) = _$ToppingCopyWithImpl;
@override @useResult
$Res call({
 String value, int price
});




}
/// @nodoc
class _$ToppingCopyWithImpl<$Res>
    implements $ToppingCopyWith<$Res> {
  _$ToppingCopyWithImpl(this._self, this._then);

  final Topping _self;
  final $Res Function(Topping) _then;

/// Create a copy of PizzaProperty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? price = null,}) {
  return _then(Topping(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
