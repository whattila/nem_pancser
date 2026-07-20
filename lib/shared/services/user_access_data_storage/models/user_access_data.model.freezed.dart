// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_access_data.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAccessData {

@JsonKey(name: "id") String get userId;@JsonKey(name: "access_token") String get accessToken;
/// Create a copy of UserAccessData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAccessDataCopyWith<UserAccessData> get copyWith => _$UserAccessDataCopyWithImpl<UserAccessData>(this as UserAccessData, _$identity);

  /// Serializes this UserAccessData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAccessData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,accessToken);

@override
String toString() {
  return 'UserAccessData(userId: $userId, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $UserAccessDataCopyWith<$Res>  {
  factory $UserAccessDataCopyWith(UserAccessData value, $Res Function(UserAccessData) _then) = _$UserAccessDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String userId,@JsonKey(name: "access_token") String accessToken
});




}
/// @nodoc
class _$UserAccessDataCopyWithImpl<$Res>
    implements $UserAccessDataCopyWith<$Res> {
  _$UserAccessDataCopyWithImpl(this._self, this._then);

  final UserAccessData _self;
  final $Res Function(UserAccessData) _then;

/// Create a copy of UserAccessData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? accessToken = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserAccessData].
extension UserAccessDataPatterns on UserAccessData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAccessData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAccessData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAccessData value)  $default,){
final _that = this;
switch (_that) {
case _UserAccessData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAccessData value)?  $default,){
final _that = this;
switch (_that) {
case _UserAccessData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String userId, @JsonKey(name: "access_token")  String accessToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAccessData() when $default != null:
return $default(_that.userId,_that.accessToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String userId, @JsonKey(name: "access_token")  String accessToken)  $default,) {final _that = this;
switch (_that) {
case _UserAccessData():
return $default(_that.userId,_that.accessToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String userId, @JsonKey(name: "access_token")  String accessToken)?  $default,) {final _that = this;
switch (_that) {
case _UserAccessData() when $default != null:
return $default(_that.userId,_that.accessToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserAccessData implements UserAccessData {
  const _UserAccessData({@JsonKey(name: "id") required this.userId, @JsonKey(name: "access_token") required this.accessToken});
  factory _UserAccessData.fromJson(Map<String, dynamic> json) => _$UserAccessDataFromJson(json);

@override@JsonKey(name: "id") final  String userId;
@override@JsonKey(name: "access_token") final  String accessToken;

/// Create a copy of UserAccessData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAccessDataCopyWith<_UserAccessData> get copyWith => __$UserAccessDataCopyWithImpl<_UserAccessData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAccessDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAccessData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,accessToken);

@override
String toString() {
  return 'UserAccessData(userId: $userId, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$UserAccessDataCopyWith<$Res> implements $UserAccessDataCopyWith<$Res> {
  factory _$UserAccessDataCopyWith(_UserAccessData value, $Res Function(_UserAccessData) _then) = __$UserAccessDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String userId,@JsonKey(name: "access_token") String accessToken
});




}
/// @nodoc
class __$UserAccessDataCopyWithImpl<$Res>
    implements _$UserAccessDataCopyWith<$Res> {
  __$UserAccessDataCopyWithImpl(this._self, this._then);

  final _UserAccessData _self;
  final $Res Function(_UserAccessData) _then;

/// Create a copy of UserAccessData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? accessToken = null,}) {
  return _then(_UserAccessData(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
