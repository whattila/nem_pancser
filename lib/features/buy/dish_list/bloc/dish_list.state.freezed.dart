// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_list.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DishListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishListState()';
}


}

/// @nodoc
class $DishListStateCopyWith<$Res>  {
$DishListStateCopyWith(DishListState _, $Res Function(DishListState) __);
}


/// Adds pattern-matching-related methods to [DishListState].
extension DishListStatePatterns on DishListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DishListInitial value)?  initial,TResult Function( DishListLoading value)?  loading,TResult Function( DishListSuccess value)?  success,TResult Function( DishListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DishListInitial() when initial != null:
return initial(_that);case DishListLoading() when loading != null:
return loading(_that);case DishListSuccess() when success != null:
return success(_that);case DishListError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DishListInitial value)  initial,required TResult Function( DishListLoading value)  loading,required TResult Function( DishListSuccess value)  success,required TResult Function( DishListError value)  error,}){
final _that = this;
switch (_that) {
case DishListInitial():
return initial(_that);case DishListLoading():
return loading(_that);case DishListSuccess():
return success(_that);case DishListError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DishListInitial value)?  initial,TResult? Function( DishListLoading value)?  loading,TResult? Function( DishListSuccess value)?  success,TResult? Function( DishListError value)?  error,}){
final _that = this;
switch (_that) {
case DishListInitial() when initial != null:
return initial(_that);case DishListLoading() when loading != null:
return loading(_that);case DishListSuccess() when success != null:
return success(_that);case DishListError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<DishHeader> dishes)?  success,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DishListInitial() when initial != null:
return initial();case DishListLoading() when loading != null:
return loading();case DishListSuccess() when success != null:
return success(_that.dishes);case DishListError() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<DishHeader> dishes)  success,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case DishListInitial():
return initial();case DishListLoading():
return loading();case DishListSuccess():
return success(_that.dishes);case DishListError():
return error();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<DishHeader> dishes)?  success,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case DishListInitial() when initial != null:
return initial();case DishListLoading() when loading != null:
return loading();case DishListSuccess() when success != null:
return success(_that.dishes);case DishListError() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class DishListInitial implements DishListState {
  const DishListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishListState.initial()';
}


}




/// @nodoc


class DishListLoading implements DishListState {
  const DishListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishListState.loading()';
}


}




/// @nodoc


class DishListSuccess implements DishListState {
  const DishListSuccess({required final  List<DishHeader> dishes}): _dishes = dishes;
  

 final  List<DishHeader> _dishes;
 List<DishHeader> get dishes {
  if (_dishes is EqualUnmodifiableListView) return _dishes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dishes);
}


/// Create a copy of DishListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishListSuccessCopyWith<DishListSuccess> get copyWith => _$DishListSuccessCopyWithImpl<DishListSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishListSuccess&&const DeepCollectionEquality().equals(other._dishes, _dishes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_dishes));

@override
String toString() {
  return 'DishListState.success(dishes: $dishes)';
}


}

/// @nodoc
abstract mixin class $DishListSuccessCopyWith<$Res> implements $DishListStateCopyWith<$Res> {
  factory $DishListSuccessCopyWith(DishListSuccess value, $Res Function(DishListSuccess) _then) = _$DishListSuccessCopyWithImpl;
@useResult
$Res call({
 List<DishHeader> dishes
});




}
/// @nodoc
class _$DishListSuccessCopyWithImpl<$Res>
    implements $DishListSuccessCopyWith<$Res> {
  _$DishListSuccessCopyWithImpl(this._self, this._then);

  final DishListSuccess _self;
  final $Res Function(DishListSuccess) _then;

/// Create a copy of DishListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dishes = null,}) {
  return _then(DishListSuccess(
dishes: null == dishes ? _self._dishes : dishes // ignore: cast_nullable_to_non_nullable
as List<DishHeader>,
  ));
}


}

/// @nodoc


class DishListError implements DishListState {
  const DishListError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishListError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishListState.error()';
}


}




// dart format on
