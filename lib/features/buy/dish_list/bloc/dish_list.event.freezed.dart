// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_list.event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DishListEvent {

 DishCategory get category;
/// Create a copy of DishListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishListEventCopyWith<DishListEvent> get copyWith => _$DishListEventCopyWithImpl<DishListEvent>(this as DishListEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishListEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'DishListEvent(category: $category)';
}


}

/// @nodoc
abstract mixin class $DishListEventCopyWith<$Res>  {
  factory $DishListEventCopyWith(DishListEvent value, $Res Function(DishListEvent) _then) = _$DishListEventCopyWithImpl;
@useResult
$Res call({
 DishCategory category
});


$DishCategoryCopyWith<$Res> get category;

}
/// @nodoc
class _$DishListEventCopyWithImpl<$Res>
    implements $DishListEventCopyWith<$Res> {
  _$DishListEventCopyWithImpl(this._self, this._then);

  final DishListEvent _self;
  final $Res Function(DishListEvent) _then;

/// Create a copy of DishListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as DishCategory,
  ));
}
/// Create a copy of DishListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishCategoryCopyWith<$Res> get category {
  
  return $DishCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [DishListEvent].
extension DishListEventPatterns on DishListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DishListLoadingRequested value)?  loadingRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DishListLoadingRequested() when loadingRequested != null:
return loadingRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DishListLoadingRequested value)  loadingRequested,}){
final _that = this;
switch (_that) {
case DishListLoadingRequested():
return loadingRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DishListLoadingRequested value)?  loadingRequested,}){
final _that = this;
switch (_that) {
case DishListLoadingRequested() when loadingRequested != null:
return loadingRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DishCategory category)?  loadingRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DishListLoadingRequested() when loadingRequested != null:
return loadingRequested(_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DishCategory category)  loadingRequested,}) {final _that = this;
switch (_that) {
case DishListLoadingRequested():
return loadingRequested(_that.category);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DishCategory category)?  loadingRequested,}) {final _that = this;
switch (_that) {
case DishListLoadingRequested() when loadingRequested != null:
return loadingRequested(_that.category);case _:
  return null;

}
}

}

/// @nodoc


class DishListLoadingRequested implements DishListEvent {
  const DishListLoadingRequested({required this.category});
  

@override final  DishCategory category;

/// Create a copy of DishListEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishListLoadingRequestedCopyWith<DishListLoadingRequested> get copyWith => _$DishListLoadingRequestedCopyWithImpl<DishListLoadingRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishListLoadingRequested&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'DishListEvent.loadingRequested(category: $category)';
}


}

/// @nodoc
abstract mixin class $DishListLoadingRequestedCopyWith<$Res> implements $DishListEventCopyWith<$Res> {
  factory $DishListLoadingRequestedCopyWith(DishListLoadingRequested value, $Res Function(DishListLoadingRequested) _then) = _$DishListLoadingRequestedCopyWithImpl;
@override @useResult
$Res call({
 DishCategory category
});


@override $DishCategoryCopyWith<$Res> get category;

}
/// @nodoc
class _$DishListLoadingRequestedCopyWithImpl<$Res>
    implements $DishListLoadingRequestedCopyWith<$Res> {
  _$DishListLoadingRequestedCopyWithImpl(this._self, this._then);

  final DishListLoadingRequested _self;
  final $Res Function(DishListLoadingRequested) _then;

/// Create a copy of DishListEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(DishListLoadingRequested(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as DishCategory,
  ));
}

/// Create a copy of DishListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishCategoryCopyWith<$Res> get category {
  
  return $DishCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
