// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration.event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegistrationEvent {

 RegistrationDto get registrationData;
/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationEventCopyWith<RegistrationEvent> get copyWith => _$RegistrationEventCopyWithImpl<RegistrationEvent>(this as RegistrationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationEvent&&(identical(other.registrationData, registrationData) || other.registrationData == registrationData));
}


@override
int get hashCode => Object.hash(runtimeType,registrationData);

@override
String toString() {
  return 'RegistrationEvent(registrationData: $registrationData)';
}


}

/// @nodoc
abstract mixin class $RegistrationEventCopyWith<$Res>  {
  factory $RegistrationEventCopyWith(RegistrationEvent value, $Res Function(RegistrationEvent) _then) = _$RegistrationEventCopyWithImpl;
@useResult
$Res call({
 RegistrationDto registrationData
});


$RegistrationDtoCopyWith<$Res> get registrationData;

}
/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._self, this._then);

  final RegistrationEvent _self;
  final $Res Function(RegistrationEvent) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? registrationData = null,}) {
  return _then(_self.copyWith(
registrationData: null == registrationData ? _self.registrationData : registrationData // ignore: cast_nullable_to_non_nullable
as RegistrationDto,
  ));
}
/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegistrationDtoCopyWith<$Res> get registrationData {
  
  return $RegistrationDtoCopyWith<$Res>(_self.registrationData, (value) {
    return _then(_self.copyWith(registrationData: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegistrationEvent].
extension RegistrationEventPatterns on RegistrationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegistrationRequested value)?  registrationRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegistrationRequested() when registrationRequested != null:
return registrationRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegistrationRequested value)  registrationRequested,}){
final _that = this;
switch (_that) {
case RegistrationRequested():
return registrationRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegistrationRequested value)?  registrationRequested,}){
final _that = this;
switch (_that) {
case RegistrationRequested() when registrationRequested != null:
return registrationRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RegistrationDto registrationData)?  registrationRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RegistrationRequested() when registrationRequested != null:
return registrationRequested(_that.registrationData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RegistrationDto registrationData)  registrationRequested,}) {final _that = this;
switch (_that) {
case RegistrationRequested():
return registrationRequested(_that.registrationData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RegistrationDto registrationData)?  registrationRequested,}) {final _that = this;
switch (_that) {
case RegistrationRequested() when registrationRequested != null:
return registrationRequested(_that.registrationData);case _:
  return null;

}
}

}

/// @nodoc


class RegistrationRequested implements RegistrationEvent {
  const RegistrationRequested({required this.registrationData});
  

@override final  RegistrationDto registrationData;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationRequestedCopyWith<RegistrationRequested> get copyWith => _$RegistrationRequestedCopyWithImpl<RegistrationRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationRequested&&(identical(other.registrationData, registrationData) || other.registrationData == registrationData));
}


@override
int get hashCode => Object.hash(runtimeType,registrationData);

@override
String toString() {
  return 'RegistrationEvent.registrationRequested(registrationData: $registrationData)';
}


}

/// @nodoc
abstract mixin class $RegistrationRequestedCopyWith<$Res> implements $RegistrationEventCopyWith<$Res> {
  factory $RegistrationRequestedCopyWith(RegistrationRequested value, $Res Function(RegistrationRequested) _then) = _$RegistrationRequestedCopyWithImpl;
@override @useResult
$Res call({
 RegistrationDto registrationData
});


@override $RegistrationDtoCopyWith<$Res> get registrationData;

}
/// @nodoc
class _$RegistrationRequestedCopyWithImpl<$Res>
    implements $RegistrationRequestedCopyWith<$Res> {
  _$RegistrationRequestedCopyWithImpl(this._self, this._then);

  final RegistrationRequested _self;
  final $Res Function(RegistrationRequested) _then;

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? registrationData = null,}) {
  return _then(RegistrationRequested(
registrationData: null == registrationData ? _self.registrationData : registrationData // ignore: cast_nullable_to_non_nullable
as RegistrationDto,
  ));
}

/// Create a copy of RegistrationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegistrationDtoCopyWith<$Res> get registrationData {
  
  return $RegistrationDtoCopyWith<$Res>(_self.registrationData, (value) {
    return _then(_self.copyWith(registrationData: value));
  });
}
}

// dart format on
