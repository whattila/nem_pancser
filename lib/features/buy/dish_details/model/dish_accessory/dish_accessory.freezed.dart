// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_accessory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DishAccessory {

 String get id; String get name; int get price;
/// Create a copy of DishAccessory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishAccessoryCopyWith<DishAccessory> get copyWith => _$DishAccessoryCopyWithImpl<DishAccessory>(this as DishAccessory, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishAccessory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,price);

@override
String toString() {
  return 'DishAccessory(id: $id, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class $DishAccessoryCopyWith<$Res>  {
  factory $DishAccessoryCopyWith(DishAccessory value, $Res Function(DishAccessory) _then) = _$DishAccessoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, int price
});




}
/// @nodoc
class _$DishAccessoryCopyWithImpl<$Res>
    implements $DishAccessoryCopyWith<$Res> {
  _$DishAccessoryCopyWithImpl(this._self, this._then);

  final DishAccessory _self;
  final $Res Function(DishAccessory) _then;

/// Create a copy of DishAccessory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DishAccessory].
extension DishAccessoryPatterns on DishAccessory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SideDish value)?  sideDish,TResult Function( MeatOption value)?  meatOption,TResult Function( SaladExtra value)?  saladExtra,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SideDish() when sideDish != null:
return sideDish(_that);case MeatOption() when meatOption != null:
return meatOption(_that);case SaladExtra() when saladExtra != null:
return saladExtra(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SideDish value)  sideDish,required TResult Function( MeatOption value)  meatOption,required TResult Function( SaladExtra value)  saladExtra,}){
final _that = this;
switch (_that) {
case SideDish():
return sideDish(_that);case MeatOption():
return meatOption(_that);case SaladExtra():
return saladExtra(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SideDish value)?  sideDish,TResult? Function( MeatOption value)?  meatOption,TResult? Function( SaladExtra value)?  saladExtra,}){
final _that = this;
switch (_that) {
case SideDish() when sideDish != null:
return sideDish(_that);case MeatOption() when meatOption != null:
return meatOption(_that);case SaladExtra() when saladExtra != null:
return saladExtra(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String name,  int price)?  sideDish,TResult Function( String id,  String name,  int price)?  meatOption,TResult Function( String id,  String name,  int price)?  saladExtra,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SideDish() when sideDish != null:
return sideDish(_that.id,_that.name,_that.price);case MeatOption() when meatOption != null:
return meatOption(_that.id,_that.name,_that.price);case SaladExtra() when saladExtra != null:
return saladExtra(_that.id,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String name,  int price)  sideDish,required TResult Function( String id,  String name,  int price)  meatOption,required TResult Function( String id,  String name,  int price)  saladExtra,}) {final _that = this;
switch (_that) {
case SideDish():
return sideDish(_that.id,_that.name,_that.price);case MeatOption():
return meatOption(_that.id,_that.name,_that.price);case SaladExtra():
return saladExtra(_that.id,_that.name,_that.price);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String name,  int price)?  sideDish,TResult? Function( String id,  String name,  int price)?  meatOption,TResult? Function( String id,  String name,  int price)?  saladExtra,}) {final _that = this;
switch (_that) {
case SideDish() when sideDish != null:
return sideDish(_that.id,_that.name,_that.price);case MeatOption() when meatOption != null:
return meatOption(_that.id,_that.name,_that.price);case SaladExtra() when saladExtra != null:
return saladExtra(_that.id,_that.name,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class SideDish implements DishAccessory {
  const SideDish({required this.id, required this.name, this.price = 0});
  

@override final  String id;
@override final  String name;
@override@JsonKey() final  int price;

/// Create a copy of DishAccessory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SideDishCopyWith<SideDish> get copyWith => _$SideDishCopyWithImpl<SideDish>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SideDish&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,price);

@override
String toString() {
  return 'DishAccessory.sideDish(id: $id, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class $SideDishCopyWith<$Res> implements $DishAccessoryCopyWith<$Res> {
  factory $SideDishCopyWith(SideDish value, $Res Function(SideDish) _then) = _$SideDishCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int price
});




}
/// @nodoc
class _$SideDishCopyWithImpl<$Res>
    implements $SideDishCopyWith<$Res> {
  _$SideDishCopyWithImpl(this._self, this._then);

  final SideDish _self;
  final $Res Function(SideDish) _then;

/// Create a copy of DishAccessory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,}) {
  return _then(SideDish(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class MeatOption implements DishAccessory {
  const MeatOption({required this.id, required this.name, this.price = 0});
  

@override final  String id;
@override final  String name;
@override@JsonKey() final  int price;

/// Create a copy of DishAccessory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeatOptionCopyWith<MeatOption> get copyWith => _$MeatOptionCopyWithImpl<MeatOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeatOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,price);

@override
String toString() {
  return 'DishAccessory.meatOption(id: $id, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class $MeatOptionCopyWith<$Res> implements $DishAccessoryCopyWith<$Res> {
  factory $MeatOptionCopyWith(MeatOption value, $Res Function(MeatOption) _then) = _$MeatOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int price
});




}
/// @nodoc
class _$MeatOptionCopyWithImpl<$Res>
    implements $MeatOptionCopyWith<$Res> {
  _$MeatOptionCopyWithImpl(this._self, this._then);

  final MeatOption _self;
  final $Res Function(MeatOption) _then;

/// Create a copy of DishAccessory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,}) {
  return _then(MeatOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SaladExtra implements DishAccessory {
  const SaladExtra({required this.id, required this.name, this.price = 0});
  

@override final  String id;
@override final  String name;
@override@JsonKey() final  int price;

/// Create a copy of DishAccessory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaladExtraCopyWith<SaladExtra> get copyWith => _$SaladExtraCopyWithImpl<SaladExtra>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaladExtra&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,price);

@override
String toString() {
  return 'DishAccessory.saladExtra(id: $id, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class $SaladExtraCopyWith<$Res> implements $DishAccessoryCopyWith<$Res> {
  factory $SaladExtraCopyWith(SaladExtra value, $Res Function(SaladExtra) _then) = _$SaladExtraCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int price
});




}
/// @nodoc
class _$SaladExtraCopyWithImpl<$Res>
    implements $SaladExtraCopyWith<$Res> {
  _$SaladExtraCopyWithImpl(this._self, this._then);

  final SaladExtra _self;
  final $Res Function(SaladExtra) _then;

/// Create a copy of DishAccessory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,}) {
  return _then(SaladExtra(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
