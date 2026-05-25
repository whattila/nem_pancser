// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_pizza_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreatePizzaState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePizzaState()';
}


}

/// @nodoc
class $CreatePizzaStateCopyWith<$Res>  {
$CreatePizzaStateCopyWith(CreatePizzaState _, $Res Function(CreatePizzaState) __);
}


/// Adds pattern-matching-related methods to [CreatePizzaState].
extension CreatePizzaStatePatterns on CreatePizzaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreatePizzaInitialState value)?  initial,TResult Function( CreatePizzaLoadingState value)?  loading,TResult Function( CreatePizzaInProgressState value)?  inProgress,TResult Function( CreatePizzaErrorState value)?  error,TResult Function( CreatePizzaDoneState value)?  done,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreatePizzaInitialState() when initial != null:
return initial(_that);case CreatePizzaLoadingState() when loading != null:
return loading(_that);case CreatePizzaInProgressState() when inProgress != null:
return inProgress(_that);case CreatePizzaErrorState() when error != null:
return error(_that);case CreatePizzaDoneState() when done != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreatePizzaInitialState value)  initial,required TResult Function( CreatePizzaLoadingState value)  loading,required TResult Function( CreatePizzaInProgressState value)  inProgress,required TResult Function( CreatePizzaErrorState value)  error,required TResult Function( CreatePizzaDoneState value)  done,}){
final _that = this;
switch (_that) {
case CreatePizzaInitialState():
return initial(_that);case CreatePizzaLoadingState():
return loading(_that);case CreatePizzaInProgressState():
return inProgress(_that);case CreatePizzaErrorState():
return error(_that);case CreatePizzaDoneState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreatePizzaInitialState value)?  initial,TResult? Function( CreatePizzaLoadingState value)?  loading,TResult? Function( CreatePizzaInProgressState value)?  inProgress,TResult? Function( CreatePizzaErrorState value)?  error,TResult? Function( CreatePizzaDoneState value)?  done,}){
final _that = this;
switch (_that) {
case CreatePizzaInitialState() when initial != null:
return initial(_that);case CreatePizzaLoadingState() when loading != null:
return loading(_that);case CreatePizzaInProgressState() when inProgress != null:
return inProgress(_that);case CreatePizzaErrorState() when error != null:
return error(_that);case CreatePizzaDoneState() when done != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PizzaSize> sizes,  PizzaSize? selectedSize,  List<PizzaSauce> sauces,  PizzaSauce? selectedSauce,  List<PizzaTopping> toppings,  Set<PizzaTopping> selectedToppings,  bool confirmNoTopping)?  inProgress,TResult Function( String message)?  error,TResult Function()?  done,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreatePizzaInitialState() when initial != null:
return initial();case CreatePizzaLoadingState() when loading != null:
return loading();case CreatePizzaInProgressState() when inProgress != null:
return inProgress(_that.sizes,_that.selectedSize,_that.sauces,_that.selectedSauce,_that.toppings,_that.selectedToppings,_that.confirmNoTopping);case CreatePizzaErrorState() when error != null:
return error(_that.message);case CreatePizzaDoneState() when done != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PizzaSize> sizes,  PizzaSize? selectedSize,  List<PizzaSauce> sauces,  PizzaSauce? selectedSauce,  List<PizzaTopping> toppings,  Set<PizzaTopping> selectedToppings,  bool confirmNoTopping)  inProgress,required TResult Function( String message)  error,required TResult Function()  done,}) {final _that = this;
switch (_that) {
case CreatePizzaInitialState():
return initial();case CreatePizzaLoadingState():
return loading();case CreatePizzaInProgressState():
return inProgress(_that.sizes,_that.selectedSize,_that.sauces,_that.selectedSauce,_that.toppings,_that.selectedToppings,_that.confirmNoTopping);case CreatePizzaErrorState():
return error(_that.message);case CreatePizzaDoneState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PizzaSize> sizes,  PizzaSize? selectedSize,  List<PizzaSauce> sauces,  PizzaSauce? selectedSauce,  List<PizzaTopping> toppings,  Set<PizzaTopping> selectedToppings,  bool confirmNoTopping)?  inProgress,TResult? Function( String message)?  error,TResult? Function()?  done,}) {final _that = this;
switch (_that) {
case CreatePizzaInitialState() when initial != null:
return initial();case CreatePizzaLoadingState() when loading != null:
return loading();case CreatePizzaInProgressState() when inProgress != null:
return inProgress(_that.sizes,_that.selectedSize,_that.sauces,_that.selectedSauce,_that.toppings,_that.selectedToppings,_that.confirmNoTopping);case CreatePizzaErrorState() when error != null:
return error(_that.message);case CreatePizzaDoneState() when done != null:
return done();case _:
  return null;

}
}

}

/// @nodoc


class CreatePizzaInitialState implements CreatePizzaState {
  const CreatePizzaInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePizzaState.initial()';
}


}




/// @nodoc


class CreatePizzaLoadingState implements CreatePizzaState {
  const CreatePizzaLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePizzaState.loading()';
}


}




/// @nodoc


class CreatePizzaInProgressState implements CreatePizzaState {
  const CreatePizzaInProgressState({required final  List<PizzaSize> sizes, this.selectedSize, required final  List<PizzaSauce> sauces, this.selectedSauce, required final  List<PizzaTopping> toppings, final  Set<PizzaTopping> selectedToppings = const {}, this.confirmNoTopping = false}): _sizes = sizes,_sauces = sauces,_toppings = toppings,_selectedToppings = selectedToppings;
  

 final  List<PizzaSize> _sizes;
 List<PizzaSize> get sizes {
  if (_sizes is EqualUnmodifiableListView) return _sizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sizes);
}

 final  PizzaSize? selectedSize;
 final  List<PizzaSauce> _sauces;
 List<PizzaSauce> get sauces {
  if (_sauces is EqualUnmodifiableListView) return _sauces;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sauces);
}

 final  PizzaSauce? selectedSauce;
 final  List<PizzaTopping> _toppings;
 List<PizzaTopping> get toppings {
  if (_toppings is EqualUnmodifiableListView) return _toppings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_toppings);
}

 final  Set<PizzaTopping> _selectedToppings;
@JsonKey() Set<PizzaTopping> get selectedToppings {
  if (_selectedToppings is EqualUnmodifiableSetView) return _selectedToppings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedToppings);
}

@JsonKey() final  bool confirmNoTopping;

/// Create a copy of CreatePizzaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePizzaInProgressStateCopyWith<CreatePizzaInProgressState> get copyWith => _$CreatePizzaInProgressStateCopyWithImpl<CreatePizzaInProgressState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaInProgressState&&const DeepCollectionEquality().equals(other._sizes, _sizes)&&const DeepCollectionEquality().equals(other.selectedSize, selectedSize)&&const DeepCollectionEquality().equals(other._sauces, _sauces)&&const DeepCollectionEquality().equals(other.selectedSauce, selectedSauce)&&const DeepCollectionEquality().equals(other._toppings, _toppings)&&const DeepCollectionEquality().equals(other._selectedToppings, _selectedToppings)&&(identical(other.confirmNoTopping, confirmNoTopping) || other.confirmNoTopping == confirmNoTopping));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sizes),const DeepCollectionEquality().hash(selectedSize),const DeepCollectionEquality().hash(_sauces),const DeepCollectionEquality().hash(selectedSauce),const DeepCollectionEquality().hash(_toppings),const DeepCollectionEquality().hash(_selectedToppings),confirmNoTopping);

@override
String toString() {
  return 'CreatePizzaState.inProgress(sizes: $sizes, selectedSize: $selectedSize, sauces: $sauces, selectedSauce: $selectedSauce, toppings: $toppings, selectedToppings: $selectedToppings, confirmNoTopping: $confirmNoTopping)';
}


}

/// @nodoc
abstract mixin class $CreatePizzaInProgressStateCopyWith<$Res> implements $CreatePizzaStateCopyWith<$Res> {
  factory $CreatePizzaInProgressStateCopyWith(CreatePizzaInProgressState value, $Res Function(CreatePizzaInProgressState) _then) = _$CreatePizzaInProgressStateCopyWithImpl;
@useResult
$Res call({
 List<PizzaSize> sizes, PizzaSize? selectedSize, List<PizzaSauce> sauces, PizzaSauce? selectedSauce, List<PizzaTopping> toppings, Set<PizzaTopping> selectedToppings, bool confirmNoTopping
});




}
/// @nodoc
class _$CreatePizzaInProgressStateCopyWithImpl<$Res>
    implements $CreatePizzaInProgressStateCopyWith<$Res> {
  _$CreatePizzaInProgressStateCopyWithImpl(this._self, this._then);

  final CreatePizzaInProgressState _self;
  final $Res Function(CreatePizzaInProgressState) _then;

/// Create a copy of CreatePizzaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sizes = null,Object? selectedSize = freezed,Object? sauces = null,Object? selectedSauce = freezed,Object? toppings = null,Object? selectedToppings = null,Object? confirmNoTopping = null,}) {
  return _then(CreatePizzaInProgressState(
sizes: null == sizes ? _self._sizes : sizes // ignore: cast_nullable_to_non_nullable
as List<PizzaSize>,selectedSize: freezed == selectedSize ? _self.selectedSize : selectedSize // ignore: cast_nullable_to_non_nullable
as PizzaSize?,sauces: null == sauces ? _self._sauces : sauces // ignore: cast_nullable_to_non_nullable
as List<PizzaSauce>,selectedSauce: freezed == selectedSauce ? _self.selectedSauce : selectedSauce // ignore: cast_nullable_to_non_nullable
as PizzaSauce?,toppings: null == toppings ? _self._toppings : toppings // ignore: cast_nullable_to_non_nullable
as List<PizzaTopping>,selectedToppings: null == selectedToppings ? _self._selectedToppings : selectedToppings // ignore: cast_nullable_to_non_nullable
as Set<PizzaTopping>,confirmNoTopping: null == confirmNoTopping ? _self.confirmNoTopping : confirmNoTopping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CreatePizzaErrorState implements CreatePizzaState {
  const CreatePizzaErrorState(this.message);
  

 final  String message;

/// Create a copy of CreatePizzaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePizzaErrorStateCopyWith<CreatePizzaErrorState> get copyWith => _$CreatePizzaErrorStateCopyWithImpl<CreatePizzaErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreatePizzaState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreatePizzaErrorStateCopyWith<$Res> implements $CreatePizzaStateCopyWith<$Res> {
  factory $CreatePizzaErrorStateCopyWith(CreatePizzaErrorState value, $Res Function(CreatePizzaErrorState) _then) = _$CreatePizzaErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreatePizzaErrorStateCopyWithImpl<$Res>
    implements $CreatePizzaErrorStateCopyWith<$Res> {
  _$CreatePizzaErrorStateCopyWithImpl(this._self, this._then);

  final CreatePizzaErrorState _self;
  final $Res Function(CreatePizzaErrorState) _then;

/// Create a copy of CreatePizzaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CreatePizzaErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreatePizzaDoneState implements CreatePizzaState {
  const CreatePizzaDoneState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaDoneState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePizzaState.done()';
}


}




// dart format on
