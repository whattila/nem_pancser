// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_details.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DishDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishDetailsState()';
}


}

/// @nodoc
class $DishDetailsStateCopyWith<$Res>  {
$DishDetailsStateCopyWith(DishDetailsState _, $Res Function(DishDetailsState) __);
}


/// Adds pattern-matching-related methods to [DishDetailsState].
extension DishDetailsStatePatterns on DishDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DishDetailsInitial value)?  initial,TResult Function( DishDetailsLoading value)?  loading,TResult Function( DishDetailsInProgress value)?  inProgress,TResult Function( DishDetailsError value)?  error,TResult Function( DishDetailsDone value)?  done,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DishDetailsInitial() when initial != null:
return initial(_that);case DishDetailsLoading() when loading != null:
return loading(_that);case DishDetailsInProgress() when inProgress != null:
return inProgress(_that);case DishDetailsError() when error != null:
return error(_that);case DishDetailsDone() when done != null:
return done(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DishDetailsInitial value)  initial,required TResult Function( DishDetailsLoading value)  loading,required TResult Function( DishDetailsInProgress value)  inProgress,required TResult Function( DishDetailsError value)  error,required TResult Function( DishDetailsDone value)  done,}){
final _that = this;
switch (_that) {
case DishDetailsInitial():
return initial(_that);case DishDetailsLoading():
return loading(_that);case DishDetailsInProgress():
return inProgress(_that);case DishDetailsError():
return error(_that);case DishDetailsDone():
return done(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DishDetailsInitial value)?  initial,TResult? Function( DishDetailsLoading value)?  loading,TResult? Function( DishDetailsInProgress value)?  inProgress,TResult? Function( DishDetailsError value)?  error,TResult? Function( DishDetailsDone value)?  done,}){
final _that = this;
switch (_that) {
case DishDetailsInitial() when initial != null:
return initial(_that);case DishDetailsLoading() when loading != null:
return loading(_that);case DishDetailsInProgress() when inProgress != null:
return inProgress(_that);case DishDetailsError() when error != null:
return error(_that);case DishDetailsDone() when done != null:
return done(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Dish dish,  List<SideDish>? sideDishes,  SideDish? selectedSideDish,  List<MeatOption>? meatOptions,  MeatOption? selectedMeatOption,  List<SaladExtra>? saladExtras,  Set<SaladExtra> selectedSaladExtras,  int amount,  String? errorMessage)?  inProgress,TResult Function()?  error,TResult Function()?  done,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DishDetailsInitial() when initial != null:
return initial();case DishDetailsLoading() when loading != null:
return loading();case DishDetailsInProgress() when inProgress != null:
return inProgress(_that.dish,_that.sideDishes,_that.selectedSideDish,_that.meatOptions,_that.selectedMeatOption,_that.saladExtras,_that.selectedSaladExtras,_that.amount,_that.errorMessage);case DishDetailsError() when error != null:
return error();case DishDetailsDone() when done != null:
return done();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Dish dish,  List<SideDish>? sideDishes,  SideDish? selectedSideDish,  List<MeatOption>? meatOptions,  MeatOption? selectedMeatOption,  List<SaladExtra>? saladExtras,  Set<SaladExtra> selectedSaladExtras,  int amount,  String? errorMessage)  inProgress,required TResult Function()  error,required TResult Function()  done,}) {final _that = this;
switch (_that) {
case DishDetailsInitial():
return initial();case DishDetailsLoading():
return loading();case DishDetailsInProgress():
return inProgress(_that.dish,_that.sideDishes,_that.selectedSideDish,_that.meatOptions,_that.selectedMeatOption,_that.saladExtras,_that.selectedSaladExtras,_that.amount,_that.errorMessage);case DishDetailsError():
return error();case DishDetailsDone():
return done();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Dish dish,  List<SideDish>? sideDishes,  SideDish? selectedSideDish,  List<MeatOption>? meatOptions,  MeatOption? selectedMeatOption,  List<SaladExtra>? saladExtras,  Set<SaladExtra> selectedSaladExtras,  int amount,  String? errorMessage)?  inProgress,TResult? Function()?  error,TResult? Function()?  done,}) {final _that = this;
switch (_that) {
case DishDetailsInitial() when initial != null:
return initial();case DishDetailsLoading() when loading != null:
return loading();case DishDetailsInProgress() when inProgress != null:
return inProgress(_that.dish,_that.sideDishes,_that.selectedSideDish,_that.meatOptions,_that.selectedMeatOption,_that.saladExtras,_that.selectedSaladExtras,_that.amount,_that.errorMessage);case DishDetailsError() when error != null:
return error();case DishDetailsDone() when done != null:
return done();case _:
  return null;

}
}

}

/// @nodoc


class DishDetailsInitial implements DishDetailsState {
  const DishDetailsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishDetailsState.initial()';
}


}




/// @nodoc


class DishDetailsLoading implements DishDetailsState {
  const DishDetailsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishDetailsState.loading()';
}


}




/// @nodoc


class DishDetailsInProgress implements DishDetailsState {
  const DishDetailsInProgress({required this.dish, final  List<SideDish>? sideDishes, this.selectedSideDish, final  List<MeatOption>? meatOptions, this.selectedMeatOption, final  List<SaladExtra>? saladExtras, final  Set<SaladExtra> selectedSaladExtras = const {}, this.amount = 1, this.errorMessage}): _sideDishes = sideDishes,_meatOptions = meatOptions,_saladExtras = saladExtras,_selectedSaladExtras = selectedSaladExtras;
  

 final  Dish dish;
 final  List<SideDish>? _sideDishes;
 List<SideDish>? get sideDishes {
  final value = _sideDishes;
  if (value == null) return null;
  if (_sideDishes is EqualUnmodifiableListView) return _sideDishes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  SideDish? selectedSideDish;
 final  List<MeatOption>? _meatOptions;
 List<MeatOption>? get meatOptions {
  final value = _meatOptions;
  if (value == null) return null;
  if (_meatOptions is EqualUnmodifiableListView) return _meatOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  MeatOption? selectedMeatOption;
 final  List<SaladExtra>? _saladExtras;
 List<SaladExtra>? get saladExtras {
  final value = _saladExtras;
  if (value == null) return null;
  if (_saladExtras is EqualUnmodifiableListView) return _saladExtras;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Set<SaladExtra> _selectedSaladExtras;
@JsonKey() Set<SaladExtra> get selectedSaladExtras {
  if (_selectedSaladExtras is EqualUnmodifiableSetView) return _selectedSaladExtras;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedSaladExtras);
}

@JsonKey() final  int amount;
 final  String? errorMessage;

/// Create a copy of DishDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishDetailsInProgressCopyWith<DishDetailsInProgress> get copyWith => _$DishDetailsInProgressCopyWithImpl<DishDetailsInProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsInProgress&&(identical(other.dish, dish) || other.dish == dish)&&const DeepCollectionEquality().equals(other._sideDishes, _sideDishes)&&const DeepCollectionEquality().equals(other.selectedSideDish, selectedSideDish)&&const DeepCollectionEquality().equals(other._meatOptions, _meatOptions)&&const DeepCollectionEquality().equals(other.selectedMeatOption, selectedMeatOption)&&const DeepCollectionEquality().equals(other._saladExtras, _saladExtras)&&const DeepCollectionEquality().equals(other._selectedSaladExtras, _selectedSaladExtras)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,dish,const DeepCollectionEquality().hash(_sideDishes),const DeepCollectionEquality().hash(selectedSideDish),const DeepCollectionEquality().hash(_meatOptions),const DeepCollectionEquality().hash(selectedMeatOption),const DeepCollectionEquality().hash(_saladExtras),const DeepCollectionEquality().hash(_selectedSaladExtras),amount,errorMessage);

@override
String toString() {
  return 'DishDetailsState.inProgress(dish: $dish, sideDishes: $sideDishes, selectedSideDish: $selectedSideDish, meatOptions: $meatOptions, selectedMeatOption: $selectedMeatOption, saladExtras: $saladExtras, selectedSaladExtras: $selectedSaladExtras, amount: $amount, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $DishDetailsInProgressCopyWith<$Res> implements $DishDetailsStateCopyWith<$Res> {
  factory $DishDetailsInProgressCopyWith(DishDetailsInProgress value, $Res Function(DishDetailsInProgress) _then) = _$DishDetailsInProgressCopyWithImpl;
@useResult
$Res call({
 Dish dish, List<SideDish>? sideDishes, SideDish? selectedSideDish, List<MeatOption>? meatOptions, MeatOption? selectedMeatOption, List<SaladExtra>? saladExtras, Set<SaladExtra> selectedSaladExtras, int amount, String? errorMessage
});


$DishCopyWith<$Res> get dish;

}
/// @nodoc
class _$DishDetailsInProgressCopyWithImpl<$Res>
    implements $DishDetailsInProgressCopyWith<$Res> {
  _$DishDetailsInProgressCopyWithImpl(this._self, this._then);

  final DishDetailsInProgress _self;
  final $Res Function(DishDetailsInProgress) _then;

/// Create a copy of DishDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dish = null,Object? sideDishes = freezed,Object? selectedSideDish = freezed,Object? meatOptions = freezed,Object? selectedMeatOption = freezed,Object? saladExtras = freezed,Object? selectedSaladExtras = null,Object? amount = null,Object? errorMessage = freezed,}) {
  return _then(DishDetailsInProgress(
dish: null == dish ? _self.dish : dish // ignore: cast_nullable_to_non_nullable
as Dish,sideDishes: freezed == sideDishes ? _self._sideDishes : sideDishes // ignore: cast_nullable_to_non_nullable
as List<SideDish>?,selectedSideDish: freezed == selectedSideDish ? _self.selectedSideDish : selectedSideDish // ignore: cast_nullable_to_non_nullable
as SideDish?,meatOptions: freezed == meatOptions ? _self._meatOptions : meatOptions // ignore: cast_nullable_to_non_nullable
as List<MeatOption>?,selectedMeatOption: freezed == selectedMeatOption ? _self.selectedMeatOption : selectedMeatOption // ignore: cast_nullable_to_non_nullable
as MeatOption?,saladExtras: freezed == saladExtras ? _self._saladExtras : saladExtras // ignore: cast_nullable_to_non_nullable
as List<SaladExtra>?,selectedSaladExtras: null == selectedSaladExtras ? _self._selectedSaladExtras : selectedSaladExtras // ignore: cast_nullable_to_non_nullable
as Set<SaladExtra>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DishDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishCopyWith<$Res> get dish {
  
  return $DishCopyWith<$Res>(_self.dish, (value) {
    return _then(_self.copyWith(dish: value));
  });
}
}

/// @nodoc


class DishDetailsError implements DishDetailsState {
  const DishDetailsError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishDetailsState.error()';
}


}




/// @nodoc


class DishDetailsDone implements DishDetailsState {
  const DishDetailsDone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsDone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishDetailsState.done()';
}


}




// dart format on
