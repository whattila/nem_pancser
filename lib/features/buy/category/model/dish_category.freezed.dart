// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DishCategory {

@JsonKey(name: "_id") String? get id; String get name;
/// Create a copy of DishCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishCategoryCopyWith<DishCategory> get copyWith => _$DishCategoryCopyWithImpl<DishCategory>(this as DishCategory, _$identity);

  /// Serializes this DishCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'DishCategory(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $DishCategoryCopyWith<$Res>  {
  factory $DishCategoryCopyWith(DishCategory value, $Res Function(DishCategory) _then) = _$DishCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String? id, String name
});




}
/// @nodoc
class _$DishCategoryCopyWithImpl<$Res>
    implements $DishCategoryCopyWith<$Res> {
  _$DishCategoryCopyWithImpl(this._self, this._then);

  final DishCategory _self;
  final $Res Function(DishCategory) _then;

/// Create a copy of DishCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DishCategory].
extension DishCategoryPatterns on DishCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DishCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DishCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DishCategory value)  $default,){
final _that = this;
switch (_that) {
case _DishCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DishCategory value)?  $default,){
final _that = this;
switch (_that) {
case _DishCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DishCategory() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String? id,  String name)  $default,) {final _that = this;
switch (_that) {
case _DishCategory():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String? id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _DishCategory() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DishCategory implements DishCategory {
  const _DishCategory({@JsonKey(name: "_id") required this.id, required this.name});
  factory _DishCategory.fromJson(Map<String, dynamic> json) => _$DishCategoryFromJson(json);

@override@JsonKey(name: "_id") final  String? id;
@override final  String name;

/// Create a copy of DishCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishCategoryCopyWith<_DishCategory> get copyWith => __$DishCategoryCopyWithImpl<_DishCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DishCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'DishCategory(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$DishCategoryCopyWith<$Res> implements $DishCategoryCopyWith<$Res> {
  factory _$DishCategoryCopyWith(_DishCategory value, $Res Function(_DishCategory) _then) = __$DishCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String? id, String name
});




}
/// @nodoc
class __$DishCategoryCopyWithImpl<$Res>
    implements _$DishCategoryCopyWith<$Res> {
  __$DishCategoryCopyWithImpl(this._self, this._then);

  final _DishCategory _self;
  final $Res Function(_DishCategory) _then;

/// Create a copy of DishCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,}) {
  return _then(_DishCategory(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
