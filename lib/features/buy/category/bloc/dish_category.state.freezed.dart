// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_category.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DishCategoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishCategoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishCategoryState()';
}


}

/// @nodoc
class $DishCategoryStateCopyWith<$Res>  {
$DishCategoryStateCopyWith(DishCategoryState _, $Res Function(DishCategoryState) __);
}


/// Adds pattern-matching-related methods to [DishCategoryState].
extension DishCategoryStatePatterns on DishCategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DishCategoryInitial value)?  initial,TResult Function( DishCategoryLoading value)?  loading,TResult Function( DishCategorySuccess value)?  success,TResult Function( DishCategoryError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DishCategoryInitial() when initial != null:
return initial(_that);case DishCategoryLoading() when loading != null:
return loading(_that);case DishCategorySuccess() when success != null:
return success(_that);case DishCategoryError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DishCategoryInitial value)  initial,required TResult Function( DishCategoryLoading value)  loading,required TResult Function( DishCategorySuccess value)  success,required TResult Function( DishCategoryError value)  error,}){
final _that = this;
switch (_that) {
case DishCategoryInitial():
return initial(_that);case DishCategoryLoading():
return loading(_that);case DishCategorySuccess():
return success(_that);case DishCategoryError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DishCategoryInitial value)?  initial,TResult? Function( DishCategoryLoading value)?  loading,TResult? Function( DishCategorySuccess value)?  success,TResult? Function( DishCategoryError value)?  error,}){
final _that = this;
switch (_that) {
case DishCategoryInitial() when initial != null:
return initial(_that);case DishCategoryLoading() when loading != null:
return loading(_that);case DishCategorySuccess() when success != null:
return success(_that);case DishCategoryError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<DishCategory> categories)?  success,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DishCategoryInitial() when initial != null:
return initial();case DishCategoryLoading() when loading != null:
return loading();case DishCategorySuccess() when success != null:
return success(_that.categories);case DishCategoryError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<DishCategory> categories)  success,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case DishCategoryInitial():
return initial();case DishCategoryLoading():
return loading();case DishCategorySuccess():
return success(_that.categories);case DishCategoryError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<DishCategory> categories)?  success,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case DishCategoryInitial() when initial != null:
return initial();case DishCategoryLoading() when loading != null:
return loading();case DishCategorySuccess() when success != null:
return success(_that.categories);case DishCategoryError() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class DishCategoryInitial implements DishCategoryState {
  const DishCategoryInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishCategoryInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishCategoryState.initial()';
}


}




/// @nodoc


class DishCategoryLoading implements DishCategoryState {
  const DishCategoryLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishCategoryLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishCategoryState.loading()';
}


}




/// @nodoc


class DishCategorySuccess implements DishCategoryState {
  const DishCategorySuccess({required final  List<DishCategory> categories}): _categories = categories;
  

 final  List<DishCategory> _categories;
 List<DishCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of DishCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishCategorySuccessCopyWith<DishCategorySuccess> get copyWith => _$DishCategorySuccessCopyWithImpl<DishCategorySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishCategorySuccess&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'DishCategoryState.success(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $DishCategorySuccessCopyWith<$Res> implements $DishCategoryStateCopyWith<$Res> {
  factory $DishCategorySuccessCopyWith(DishCategorySuccess value, $Res Function(DishCategorySuccess) _then) = _$DishCategorySuccessCopyWithImpl;
@useResult
$Res call({
 List<DishCategory> categories
});




}
/// @nodoc
class _$DishCategorySuccessCopyWithImpl<$Res>
    implements $DishCategorySuccessCopyWith<$Res> {
  _$DishCategorySuccessCopyWithImpl(this._self, this._then);

  final DishCategorySuccess _self;
  final $Res Function(DishCategorySuccess) _then;

/// Create a copy of DishCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(DishCategorySuccess(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<DishCategory>,
  ));
}


}

/// @nodoc


class DishCategoryError implements DishCategoryState {
  const DishCategoryError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishCategoryError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishCategoryState.error()';
}


}




// dart format on
