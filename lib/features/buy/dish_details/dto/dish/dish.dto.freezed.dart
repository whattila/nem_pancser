// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DishDto {

 String get id; String get name; int get price; String get description; List<String> get allergens; int get pancserCreditValue; String? get imageUrl; bool get hasSideDishOption; bool get hasMeatOption; bool get hasSaladExtraOption;
/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishDtoCopyWith<DishDto> get copyWith => _$DishDtoCopyWithImpl<DishDto>(this as DishDto, _$identity);

  /// Serializes this DishDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.allergens, allergens)&&(identical(other.pancserCreditValue, pancserCreditValue) || other.pancserCreditValue == pancserCreditValue)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.hasSideDishOption, hasSideDishOption) || other.hasSideDishOption == hasSideDishOption)&&(identical(other.hasMeatOption, hasMeatOption) || other.hasMeatOption == hasMeatOption)&&(identical(other.hasSaladExtraOption, hasSaladExtraOption) || other.hasSaladExtraOption == hasSaladExtraOption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,description,const DeepCollectionEquality().hash(allergens),pancserCreditValue,imageUrl,hasSideDishOption,hasMeatOption,hasSaladExtraOption);

@override
String toString() {
  return 'DishDto(id: $id, name: $name, price: $price, description: $description, allergens: $allergens, pancserCreditValue: $pancserCreditValue, imageUrl: $imageUrl, hasSideDishOption: $hasSideDishOption, hasMeatOption: $hasMeatOption, hasSaladExtraOption: $hasSaladExtraOption)';
}


}

/// @nodoc
abstract mixin class $DishDtoCopyWith<$Res>  {
  factory $DishDtoCopyWith(DishDto value, $Res Function(DishDto) _then) = _$DishDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, int price, String description, List<String> allergens, int pancserCreditValue, String? imageUrl, bool hasSideDishOption, bool hasMeatOption, bool hasSaladExtraOption
});




}
/// @nodoc
class _$DishDtoCopyWithImpl<$Res>
    implements $DishDtoCopyWith<$Res> {
  _$DishDtoCopyWithImpl(this._self, this._then);

  final DishDto _self;
  final $Res Function(DishDto) _then;

/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? description = null,Object? allergens = null,Object? pancserCreditValue = null,Object? imageUrl = freezed,Object? hasSideDishOption = null,Object? hasMeatOption = null,Object? hasSaladExtraOption = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,allergens: null == allergens ? _self.allergens : allergens // ignore: cast_nullable_to_non_nullable
as List<String>,pancserCreditValue: null == pancserCreditValue ? _self.pancserCreditValue : pancserCreditValue // ignore: cast_nullable_to_non_nullable
as int,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,hasSideDishOption: null == hasSideDishOption ? _self.hasSideDishOption : hasSideDishOption // ignore: cast_nullable_to_non_nullable
as bool,hasMeatOption: null == hasMeatOption ? _self.hasMeatOption : hasMeatOption // ignore: cast_nullable_to_non_nullable
as bool,hasSaladExtraOption: null == hasSaladExtraOption ? _self.hasSaladExtraOption : hasSaladExtraOption // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DishDto].
extension DishDtoPatterns on DishDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DishDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DishDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DishDto value)  $default,){
final _that = this;
switch (_that) {
case _DishDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DishDto value)?  $default,){
final _that = this;
switch (_that) {
case _DishDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int price,  String description,  List<String> allergens,  int pancserCreditValue,  String? imageUrl,  bool hasSideDishOption,  bool hasMeatOption,  bool hasSaladExtraOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DishDto() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.description,_that.allergens,_that.pancserCreditValue,_that.imageUrl,_that.hasSideDishOption,_that.hasMeatOption,_that.hasSaladExtraOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int price,  String description,  List<String> allergens,  int pancserCreditValue,  String? imageUrl,  bool hasSideDishOption,  bool hasMeatOption,  bool hasSaladExtraOption)  $default,) {final _that = this;
switch (_that) {
case _DishDto():
return $default(_that.id,_that.name,_that.price,_that.description,_that.allergens,_that.pancserCreditValue,_that.imageUrl,_that.hasSideDishOption,_that.hasMeatOption,_that.hasSaladExtraOption);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int price,  String description,  List<String> allergens,  int pancserCreditValue,  String? imageUrl,  bool hasSideDishOption,  bool hasMeatOption,  bool hasSaladExtraOption)?  $default,) {final _that = this;
switch (_that) {
case _DishDto() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.description,_that.allergens,_that.pancserCreditValue,_that.imageUrl,_that.hasSideDishOption,_that.hasMeatOption,_that.hasSaladExtraOption);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DishDto implements DishDto {
  const _DishDto({required this.id, required this.name, required this.price, required this.description, final  List<String> allergens = const [], this.pancserCreditValue = 0, required this.imageUrl, required this.hasSideDishOption, required this.hasMeatOption, required this.hasSaladExtraOption}): _allergens = allergens;
  factory _DishDto.fromJson(Map<String, dynamic> json) => _$DishDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  int price;
@override final  String description;
 final  List<String> _allergens;
@override@JsonKey() List<String> get allergens {
  if (_allergens is EqualUnmodifiableListView) return _allergens;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allergens);
}

@override@JsonKey() final  int pancserCreditValue;
@override final  String? imageUrl;
@override final  bool hasSideDishOption;
@override final  bool hasMeatOption;
@override final  bool hasSaladExtraOption;

/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DishDtoCopyWith<_DishDto> get copyWith => __$DishDtoCopyWithImpl<_DishDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DishDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DishDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._allergens, _allergens)&&(identical(other.pancserCreditValue, pancserCreditValue) || other.pancserCreditValue == pancserCreditValue)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.hasSideDishOption, hasSideDishOption) || other.hasSideDishOption == hasSideDishOption)&&(identical(other.hasMeatOption, hasMeatOption) || other.hasMeatOption == hasMeatOption)&&(identical(other.hasSaladExtraOption, hasSaladExtraOption) || other.hasSaladExtraOption == hasSaladExtraOption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,description,const DeepCollectionEquality().hash(_allergens),pancserCreditValue,imageUrl,hasSideDishOption,hasMeatOption,hasSaladExtraOption);

@override
String toString() {
  return 'DishDto(id: $id, name: $name, price: $price, description: $description, allergens: $allergens, pancserCreditValue: $pancserCreditValue, imageUrl: $imageUrl, hasSideDishOption: $hasSideDishOption, hasMeatOption: $hasMeatOption, hasSaladExtraOption: $hasSaladExtraOption)';
}


}

/// @nodoc
abstract mixin class _$DishDtoCopyWith<$Res> implements $DishDtoCopyWith<$Res> {
  factory _$DishDtoCopyWith(_DishDto value, $Res Function(_DishDto) _then) = __$DishDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int price, String description, List<String> allergens, int pancserCreditValue, String? imageUrl, bool hasSideDishOption, bool hasMeatOption, bool hasSaladExtraOption
});




}
/// @nodoc
class __$DishDtoCopyWithImpl<$Res>
    implements _$DishDtoCopyWith<$Res> {
  __$DishDtoCopyWithImpl(this._self, this._then);

  final _DishDto _self;
  final $Res Function(_DishDto) _then;

/// Create a copy of DishDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? description = null,Object? allergens = null,Object? pancserCreditValue = null,Object? imageUrl = freezed,Object? hasSideDishOption = null,Object? hasMeatOption = null,Object? hasSaladExtraOption = null,}) {
  return _then(_DishDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,allergens: null == allergens ? _self._allergens : allergens // ignore: cast_nullable_to_non_nullable
as List<String>,pancserCreditValue: null == pancserCreditValue ? _self.pancserCreditValue : pancserCreditValue // ignore: cast_nullable_to_non_nullable
as int,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,hasSideDishOption: null == hasSideDishOption ? _self.hasSideDishOption : hasSideDishOption // ignore: cast_nullable_to_non_nullable
as bool,hasMeatOption: null == hasMeatOption ? _self.hasMeatOption : hasMeatOption // ignore: cast_nullable_to_non_nullable
as bool,hasSaladExtraOption: null == hasSaladExtraOption ? _self.hasSaladExtraOption : hasSaladExtraOption // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
