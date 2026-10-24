// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_accessory.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DishAccessoryDto {

 String get id; String get name; DishAccessoryType get type; int get price;
/// Create a copy of DishAccessoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishAccessoryDtoCopyWith<DishAccessoryDto> get copyWith => _$DishAccessoryDtoCopyWithImpl<DishAccessoryDto>(this as DishAccessoryDto, _$identity);

  /// Serializes this DishAccessoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishAccessoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,price);

@override
String toString() {
  return 'DishAccessoryDto(id: $id, name: $name, type: $type, price: $price)';
}


}

/// @nodoc
abstract mixin class $DishAccessoryDtoCopyWith<$Res>  {
  factory $DishAccessoryDtoCopyWith(DishAccessoryDto value, $Res Function(DishAccessoryDto) _then) = _$DishAccessoryDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, DishAccessoryType type, int price
});




}
/// @nodoc
class _$DishAccessoryDtoCopyWithImpl<$Res>
    implements $DishAccessoryDtoCopyWith<$Res> {
  _$DishAccessoryDtoCopyWithImpl(this._self, this._then);

  final DishAccessoryDto _self;
  final $Res Function(DishAccessoryDto) _then;

/// Create a copy of DishAccessoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DishAccessoryType,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DishAccessoryDto].
extension DishAccessoryDtoPatterns on DishAccessoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DishAccessoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DishAccessoryDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DishAccessoryDto value)  $default,){
final _that = this;
switch (_that) {
case _DishAccessoryDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DishAccessoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _DishAccessoryDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  DishAccessoryType type,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DishAccessoryDto() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  DishAccessoryType type,  int price)  $default,) {final _that = this;
switch (_that) {
case _DishAccessoryDto():
return $default(_that.id,_that.name,_that.type,_that.price);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  DishAccessoryType type,  int price)?  $default,) {final _that = this;
switch (_that) {
case _DishAccessoryDto() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DishAccessoryDto implements DishAccessoryDto {
  const _DishAccessoryDto({required this.id, required this.name, required this.type, required this.price});
  factory _DishAccessoryDto.fromJson(Map<String, dynamic> json) => _$DishAccessoryDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  DishAccessoryType type;
@override final  int price;

/// Create a copy of DishAccessoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishAccessoryDtoCopyWith<_DishAccessoryDto> get copyWith => __$DishAccessoryDtoCopyWithImpl<_DishAccessoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishAccessoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DishAccessoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,price);

@override
String toString() {
  return 'DishAccessoryDto(id: $id, name: $name, type: $type, price: $price)';
}


}

/// @nodoc
abstract mixin class _$DishAccessoryDtoCopyWith<$Res> implements $DishAccessoryDtoCopyWith<$Res> {
  factory _$DishAccessoryDtoCopyWith(_DishAccessoryDto value, $Res Function(_DishAccessoryDto) _then) = __$DishAccessoryDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, DishAccessoryType type, int price
});




}
/// @nodoc
class __$DishAccessoryDtoCopyWithImpl<$Res>
    implements _$DishAccessoryDtoCopyWith<$Res> {
  __$DishAccessoryDtoCopyWithImpl(this._self, this._then);

  final _DishAccessoryDto _self;
  final $Res Function(_DishAccessoryDto) _then;

/// Create a copy of DishAccessoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? price = null,}) {
  return _then(_DishAccessoryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DishAccessoryType,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
