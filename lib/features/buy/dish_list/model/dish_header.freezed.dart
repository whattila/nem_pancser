// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DishHeader {

 String get id; String get name; int get price;
/// Create a copy of DishHeader
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishHeaderCopyWith<DishHeader> get copyWith => _$DishHeaderCopyWithImpl<DishHeader>(this as DishHeader, _$identity);

  /// Serializes this DishHeader to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishHeader&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price);

@override
String toString() {
  return 'DishHeader(id: $id, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class $DishHeaderCopyWith<$Res>  {
  factory $DishHeaderCopyWith(DishHeader value, $Res Function(DishHeader) _then) = _$DishHeaderCopyWithImpl;
@useResult
$Res call({
 String id, String name, int price
});




}
/// @nodoc
class _$DishHeaderCopyWithImpl<$Res>
    implements $DishHeaderCopyWith<$Res> {
  _$DishHeaderCopyWithImpl(this._self, this._then);

  final DishHeader _self;
  final $Res Function(DishHeader) _then;

/// Create a copy of DishHeader
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


/// Adds pattern-matching-related methods to [DishHeader].
extension DishHeaderPatterns on DishHeader {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DishHeader value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DishHeader() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DishHeader value)  $default,){
final _that = this;
switch (_that) {
case _DishHeader():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DishHeader value)?  $default,){
final _that = this;
switch (_that) {
case _DishHeader() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DishHeader() when $default != null:
return $default(_that.id,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int price)  $default,) {final _that = this;
switch (_that) {
case _DishHeader():
return $default(_that.id,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int price)?  $default,) {final _that = this;
switch (_that) {
case _DishHeader() when $default != null:
return $default(_that.id,_that.name,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DishHeader implements DishHeader {
  const _DishHeader({required this.id, required this.name, required this.price});
  factory _DishHeader.fromJson(Map<String, dynamic> json) => _$DishHeaderFromJson(json);

@override final  String id;
@override final  String name;
@override final  int price;

/// Create a copy of DishHeader
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishHeaderCopyWith<_DishHeader> get copyWith => __$DishHeaderCopyWithImpl<_DishHeader>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishHeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DishHeader&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price);

@override
String toString() {
  return 'DishHeader(id: $id, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class _$DishHeaderCopyWith<$Res> implements $DishHeaderCopyWith<$Res> {
  factory _$DishHeaderCopyWith(_DishHeader value, $Res Function(_DishHeader) _then) = __$DishHeaderCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int price
});




}
/// @nodoc
class __$DishHeaderCopyWithImpl<$Res>
    implements _$DishHeaderCopyWith<$Res> {
  __$DishHeaderCopyWithImpl(this._self, this._then);

  final _DishHeader _self;
  final $Res Function(_DishHeader) _then;

/// Create a copy of DishHeader
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,}) {
  return _then(_DishHeader(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
