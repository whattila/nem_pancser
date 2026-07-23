// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationDto {

 String get username; String get email; String get password; String get familyName; String get givenName; String get phoneNumber; AddressDto get address; bool get subscribeToNewsletter;
/// Create a copy of RegistrationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationDtoCopyWith<RegistrationDto> get copyWith => _$RegistrationDtoCopyWithImpl<RegistrationDto>(this as RegistrationDto, _$identity);

  /// Serializes this RegistrationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationDto&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.subscribeToNewsletter, subscribeToNewsletter) || other.subscribeToNewsletter == subscribeToNewsletter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,password,familyName,givenName,phoneNumber,address,subscribeToNewsletter);

@override
String toString() {
  return 'RegistrationDto(username: $username, email: $email, password: $password, familyName: $familyName, givenName: $givenName, phoneNumber: $phoneNumber, address: $address, subscribeToNewsletter: $subscribeToNewsletter)';
}


}

/// @nodoc
abstract mixin class $RegistrationDtoCopyWith<$Res>  {
  factory $RegistrationDtoCopyWith(RegistrationDto value, $Res Function(RegistrationDto) _then) = _$RegistrationDtoCopyWithImpl;
@useResult
$Res call({
 String username, String email, String password, String familyName, String givenName, String phoneNumber, AddressDto address, bool subscribeToNewsletter
});


$AddressDtoCopyWith<$Res> get address;

}
/// @nodoc
class _$RegistrationDtoCopyWithImpl<$Res>
    implements $RegistrationDtoCopyWith<$Res> {
  _$RegistrationDtoCopyWithImpl(this._self, this._then);

  final RegistrationDto _self;
  final $Res Function(RegistrationDto) _then;

/// Create a copy of RegistrationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? email = null,Object? password = null,Object? familyName = null,Object? givenName = null,Object? phoneNumber = null,Object? address = null,Object? subscribeToNewsletter = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,familyName: null == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String,givenName: null == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressDto,subscribeToNewsletter: null == subscribeToNewsletter ? _self.subscribeToNewsletter : subscribeToNewsletter // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of RegistrationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res> get address {
  
  return $AddressDtoCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegistrationDto].
extension RegistrationDtoPatterns on RegistrationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegistrationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegistrationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegistrationDto value)  $default,){
final _that = this;
switch (_that) {
case _RegistrationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegistrationDto value)?  $default,){
final _that = this;
switch (_that) {
case _RegistrationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String email,  String password,  String familyName,  String givenName,  String phoneNumber,  AddressDto address,  bool subscribeToNewsletter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegistrationDto() when $default != null:
return $default(_that.username,_that.email,_that.password,_that.familyName,_that.givenName,_that.phoneNumber,_that.address,_that.subscribeToNewsletter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String email,  String password,  String familyName,  String givenName,  String phoneNumber,  AddressDto address,  bool subscribeToNewsletter)  $default,) {final _that = this;
switch (_that) {
case _RegistrationDto():
return $default(_that.username,_that.email,_that.password,_that.familyName,_that.givenName,_that.phoneNumber,_that.address,_that.subscribeToNewsletter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String email,  String password,  String familyName,  String givenName,  String phoneNumber,  AddressDto address,  bool subscribeToNewsletter)?  $default,) {final _that = this;
switch (_that) {
case _RegistrationDto() when $default != null:
return $default(_that.username,_that.email,_that.password,_that.familyName,_that.givenName,_that.phoneNumber,_that.address,_that.subscribeToNewsletter);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _RegistrationDto implements RegistrationDto {
  const _RegistrationDto({required this.username, required this.email, required this.password, required this.familyName, required this.givenName, required this.phoneNumber, required this.address, required this.subscribeToNewsletter});
  factory _RegistrationDto.fromJson(Map<String, dynamic> json) => _$RegistrationDtoFromJson(json);

@override final  String username;
@override final  String email;
@override final  String password;
@override final  String familyName;
@override final  String givenName;
@override final  String phoneNumber;
@override final  AddressDto address;
@override final  bool subscribeToNewsletter;

/// Create a copy of RegistrationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegistrationDtoCopyWith<_RegistrationDto> get copyWith => __$RegistrationDtoCopyWithImpl<_RegistrationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegistrationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegistrationDto&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.subscribeToNewsletter, subscribeToNewsletter) || other.subscribeToNewsletter == subscribeToNewsletter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,password,familyName,givenName,phoneNumber,address,subscribeToNewsletter);

@override
String toString() {
  return 'RegistrationDto(username: $username, email: $email, password: $password, familyName: $familyName, givenName: $givenName, phoneNumber: $phoneNumber, address: $address, subscribeToNewsletter: $subscribeToNewsletter)';
}


}

/// @nodoc
abstract mixin class _$RegistrationDtoCopyWith<$Res> implements $RegistrationDtoCopyWith<$Res> {
  factory _$RegistrationDtoCopyWith(_RegistrationDto value, $Res Function(_RegistrationDto) _then) = __$RegistrationDtoCopyWithImpl;
@override @useResult
$Res call({
 String username, String email, String password, String familyName, String givenName, String phoneNumber, AddressDto address, bool subscribeToNewsletter
});


@override $AddressDtoCopyWith<$Res> get address;

}
/// @nodoc
class __$RegistrationDtoCopyWithImpl<$Res>
    implements _$RegistrationDtoCopyWith<$Res> {
  __$RegistrationDtoCopyWithImpl(this._self, this._then);

  final _RegistrationDto _self;
  final $Res Function(_RegistrationDto) _then;

/// Create a copy of RegistrationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? password = null,Object? familyName = null,Object? givenName = null,Object? phoneNumber = null,Object? address = null,Object? subscribeToNewsletter = null,}) {
  return _then(_RegistrationDto(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,familyName: null == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String,givenName: null == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressDto,subscribeToNewsletter: null == subscribeToNewsletter ? _self.subscribeToNewsletter : subscribeToNewsletter // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of RegistrationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res> get address {
  
  return $AddressDtoCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
