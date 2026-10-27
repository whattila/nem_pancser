// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_pizza_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreatePizzaEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePizzaEvent()';
}


}

/// @nodoc
class $CreatePizzaEventCopyWith<$Res>  {
$CreatePizzaEventCopyWith(CreatePizzaEvent _, $Res Function(CreatePizzaEvent) __);
}


/// Adds pattern-matching-related methods to [CreatePizzaEvent].
extension CreatePizzaEventPatterns on CreatePizzaEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreatePizzaStarted value)?  started,TResult Function( CreatePizzaSelectedSizeChanged value)?  selectedSizeChanged,TResult Function( CreatePizzaSelectedSauceChanged value)?  selectedSauceChanged,TResult Function( CreatePizzaToppingSelectionChanged value)?  toppingSelectionChanged,TResult Function( CreatePizzaFinished value)?  finished,TResult Function( CreatePizzaFinishedNoToppingConfirmed value)?  finishedNoToppingConfirmed,TResult Function( CreatePizzaNoToppingCanceled value)?  noToppingCanceled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreatePizzaStarted() when started != null:
return started(_that);case CreatePizzaSelectedSizeChanged() when selectedSizeChanged != null:
return selectedSizeChanged(_that);case CreatePizzaSelectedSauceChanged() when selectedSauceChanged != null:
return selectedSauceChanged(_that);case CreatePizzaToppingSelectionChanged() when toppingSelectionChanged != null:
return toppingSelectionChanged(_that);case CreatePizzaFinished() when finished != null:
return finished(_that);case CreatePizzaFinishedNoToppingConfirmed() when finishedNoToppingConfirmed != null:
return finishedNoToppingConfirmed(_that);case CreatePizzaNoToppingCanceled() when noToppingCanceled != null:
return noToppingCanceled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreatePizzaStarted value)  started,required TResult Function( CreatePizzaSelectedSizeChanged value)  selectedSizeChanged,required TResult Function( CreatePizzaSelectedSauceChanged value)  selectedSauceChanged,required TResult Function( CreatePizzaToppingSelectionChanged value)  toppingSelectionChanged,required TResult Function( CreatePizzaFinished value)  finished,required TResult Function( CreatePizzaFinishedNoToppingConfirmed value)  finishedNoToppingConfirmed,required TResult Function( CreatePizzaNoToppingCanceled value)  noToppingCanceled,}){
final _that = this;
switch (_that) {
case CreatePizzaStarted():
return started(_that);case CreatePizzaSelectedSizeChanged():
return selectedSizeChanged(_that);case CreatePizzaSelectedSauceChanged():
return selectedSauceChanged(_that);case CreatePizzaToppingSelectionChanged():
return toppingSelectionChanged(_that);case CreatePizzaFinished():
return finished(_that);case CreatePizzaFinishedNoToppingConfirmed():
return finishedNoToppingConfirmed(_that);case CreatePizzaNoToppingCanceled():
return noToppingCanceled(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreatePizzaStarted value)?  started,TResult? Function( CreatePizzaSelectedSizeChanged value)?  selectedSizeChanged,TResult? Function( CreatePizzaSelectedSauceChanged value)?  selectedSauceChanged,TResult? Function( CreatePizzaToppingSelectionChanged value)?  toppingSelectionChanged,TResult? Function( CreatePizzaFinished value)?  finished,TResult? Function( CreatePizzaFinishedNoToppingConfirmed value)?  finishedNoToppingConfirmed,TResult? Function( CreatePizzaNoToppingCanceled value)?  noToppingCanceled,}){
final _that = this;
switch (_that) {
case CreatePizzaStarted() when started != null:
return started(_that);case CreatePizzaSelectedSizeChanged() when selectedSizeChanged != null:
return selectedSizeChanged(_that);case CreatePizzaSelectedSauceChanged() when selectedSauceChanged != null:
return selectedSauceChanged(_that);case CreatePizzaToppingSelectionChanged() when toppingSelectionChanged != null:
return toppingSelectionChanged(_that);case CreatePizzaFinished() when finished != null:
return finished(_that);case CreatePizzaFinishedNoToppingConfirmed() when finishedNoToppingConfirmed != null:
return finishedNoToppingConfirmed(_that);case CreatePizzaNoToppingCanceled() when noToppingCanceled != null:
return noToppingCanceled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( Size newSize)?  selectedSizeChanged,TResult Function( Sauce newSauce)?  selectedSauceChanged,TResult Function( Topping topping)?  toppingSelectionChanged,TResult Function()?  finished,TResult Function()?  finishedNoToppingConfirmed,TResult Function()?  noToppingCanceled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreatePizzaStarted() when started != null:
return started();case CreatePizzaSelectedSizeChanged() when selectedSizeChanged != null:
return selectedSizeChanged(_that.newSize);case CreatePizzaSelectedSauceChanged() when selectedSauceChanged != null:
return selectedSauceChanged(_that.newSauce);case CreatePizzaToppingSelectionChanged() when toppingSelectionChanged != null:
return toppingSelectionChanged(_that.topping);case CreatePizzaFinished() when finished != null:
return finished();case CreatePizzaFinishedNoToppingConfirmed() when finishedNoToppingConfirmed != null:
return finishedNoToppingConfirmed();case CreatePizzaNoToppingCanceled() when noToppingCanceled != null:
return noToppingCanceled();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( Size newSize)  selectedSizeChanged,required TResult Function( Sauce newSauce)  selectedSauceChanged,required TResult Function( Topping topping)  toppingSelectionChanged,required TResult Function()  finished,required TResult Function()  finishedNoToppingConfirmed,required TResult Function()  noToppingCanceled,}) {final _that = this;
switch (_that) {
case CreatePizzaStarted():
return started();case CreatePizzaSelectedSizeChanged():
return selectedSizeChanged(_that.newSize);case CreatePizzaSelectedSauceChanged():
return selectedSauceChanged(_that.newSauce);case CreatePizzaToppingSelectionChanged():
return toppingSelectionChanged(_that.topping);case CreatePizzaFinished():
return finished();case CreatePizzaFinishedNoToppingConfirmed():
return finishedNoToppingConfirmed();case CreatePizzaNoToppingCanceled():
return noToppingCanceled();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( Size newSize)?  selectedSizeChanged,TResult? Function( Sauce newSauce)?  selectedSauceChanged,TResult? Function( Topping topping)?  toppingSelectionChanged,TResult? Function()?  finished,TResult? Function()?  finishedNoToppingConfirmed,TResult? Function()?  noToppingCanceled,}) {final _that = this;
switch (_that) {
case CreatePizzaStarted() when started != null:
return started();case CreatePizzaSelectedSizeChanged() when selectedSizeChanged != null:
return selectedSizeChanged(_that.newSize);case CreatePizzaSelectedSauceChanged() when selectedSauceChanged != null:
return selectedSauceChanged(_that.newSauce);case CreatePizzaToppingSelectionChanged() when toppingSelectionChanged != null:
return toppingSelectionChanged(_that.topping);case CreatePizzaFinished() when finished != null:
return finished();case CreatePizzaFinishedNoToppingConfirmed() when finishedNoToppingConfirmed != null:
return finishedNoToppingConfirmed();case CreatePizzaNoToppingCanceled() when noToppingCanceled != null:
return noToppingCanceled();case _:
  return null;

}
}

}

/// @nodoc


class CreatePizzaStarted implements CreatePizzaEvent {
  const CreatePizzaStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePizzaEvent.started()';
}


}




/// @nodoc


class CreatePizzaSelectedSizeChanged implements CreatePizzaEvent {
  const CreatePizzaSelectedSizeChanged({required this.newSize});
  

 final  Size newSize;

/// Create a copy of CreatePizzaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePizzaSelectedSizeChangedCopyWith<CreatePizzaSelectedSizeChanged> get copyWith => _$CreatePizzaSelectedSizeChangedCopyWithImpl<CreatePizzaSelectedSizeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaSelectedSizeChanged&&const DeepCollectionEquality().equals(other.newSize, newSize));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(newSize));

@override
String toString() {
  return 'CreatePizzaEvent.selectedSizeChanged(newSize: $newSize)';
}


}

/// @nodoc
abstract mixin class $CreatePizzaSelectedSizeChangedCopyWith<$Res> implements $CreatePizzaEventCopyWith<$Res> {
  factory $CreatePizzaSelectedSizeChangedCopyWith(CreatePizzaSelectedSizeChanged value, $Res Function(CreatePizzaSelectedSizeChanged) _then) = _$CreatePizzaSelectedSizeChangedCopyWithImpl;
@useResult
$Res call({
 Size newSize
});




}
/// @nodoc
class _$CreatePizzaSelectedSizeChangedCopyWithImpl<$Res>
    implements $CreatePizzaSelectedSizeChangedCopyWith<$Res> {
  _$CreatePizzaSelectedSizeChangedCopyWithImpl(this._self, this._then);

  final CreatePizzaSelectedSizeChanged _self;
  final $Res Function(CreatePizzaSelectedSizeChanged) _then;

/// Create a copy of CreatePizzaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newSize = freezed,}) {
  return _then(CreatePizzaSelectedSizeChanged(
newSize: freezed == newSize ? _self.newSize : newSize // ignore: cast_nullable_to_non_nullable
as Size,
  ));
}


}

/// @nodoc


class CreatePizzaSelectedSauceChanged implements CreatePizzaEvent {
  const CreatePizzaSelectedSauceChanged({required this.newSauce});
  

 final  Sauce newSauce;

/// Create a copy of CreatePizzaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePizzaSelectedSauceChangedCopyWith<CreatePizzaSelectedSauceChanged> get copyWith => _$CreatePizzaSelectedSauceChangedCopyWithImpl<CreatePizzaSelectedSauceChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaSelectedSauceChanged&&const DeepCollectionEquality().equals(other.newSauce, newSauce));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(newSauce));

@override
String toString() {
  return 'CreatePizzaEvent.selectedSauceChanged(newSauce: $newSauce)';
}


}

/// @nodoc
abstract mixin class $CreatePizzaSelectedSauceChangedCopyWith<$Res> implements $CreatePizzaEventCopyWith<$Res> {
  factory $CreatePizzaSelectedSauceChangedCopyWith(CreatePizzaSelectedSauceChanged value, $Res Function(CreatePizzaSelectedSauceChanged) _then) = _$CreatePizzaSelectedSauceChangedCopyWithImpl;
@useResult
$Res call({
 Sauce newSauce
});




}
/// @nodoc
class _$CreatePizzaSelectedSauceChangedCopyWithImpl<$Res>
    implements $CreatePizzaSelectedSauceChangedCopyWith<$Res> {
  _$CreatePizzaSelectedSauceChangedCopyWithImpl(this._self, this._then);

  final CreatePizzaSelectedSauceChanged _self;
  final $Res Function(CreatePizzaSelectedSauceChanged) _then;

/// Create a copy of CreatePizzaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newSauce = freezed,}) {
  return _then(CreatePizzaSelectedSauceChanged(
newSauce: freezed == newSauce ? _self.newSauce : newSauce // ignore: cast_nullable_to_non_nullable
as Sauce,
  ));
}


}

/// @nodoc


class CreatePizzaToppingSelectionChanged implements CreatePizzaEvent {
  const CreatePizzaToppingSelectionChanged({required this.topping});
  

 final  Topping topping;

/// Create a copy of CreatePizzaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePizzaToppingSelectionChangedCopyWith<CreatePizzaToppingSelectionChanged> get copyWith => _$CreatePizzaToppingSelectionChangedCopyWithImpl<CreatePizzaToppingSelectionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaToppingSelectionChanged&&const DeepCollectionEquality().equals(other.topping, topping));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(topping));

@override
String toString() {
  return 'CreatePizzaEvent.toppingSelectionChanged(topping: $topping)';
}


}

/// @nodoc
abstract mixin class $CreatePizzaToppingSelectionChangedCopyWith<$Res> implements $CreatePizzaEventCopyWith<$Res> {
  factory $CreatePizzaToppingSelectionChangedCopyWith(CreatePizzaToppingSelectionChanged value, $Res Function(CreatePizzaToppingSelectionChanged) _then) = _$CreatePizzaToppingSelectionChangedCopyWithImpl;
@useResult
$Res call({
 Topping topping
});




}
/// @nodoc
class _$CreatePizzaToppingSelectionChangedCopyWithImpl<$Res>
    implements $CreatePizzaToppingSelectionChangedCopyWith<$Res> {
  _$CreatePizzaToppingSelectionChangedCopyWithImpl(this._self, this._then);

  final CreatePizzaToppingSelectionChanged _self;
  final $Res Function(CreatePizzaToppingSelectionChanged) _then;

/// Create a copy of CreatePizzaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? topping = freezed,}) {
  return _then(CreatePizzaToppingSelectionChanged(
topping: freezed == topping ? _self.topping : topping // ignore: cast_nullable_to_non_nullable
as Topping,
  ));
}


}

/// @nodoc


class CreatePizzaFinished implements CreatePizzaEvent {
  const CreatePizzaFinished();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaFinished);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePizzaEvent.finished()';
}


}




/// @nodoc


class CreatePizzaFinishedNoToppingConfirmed implements CreatePizzaEvent {
  const CreatePizzaFinishedNoToppingConfirmed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaFinishedNoToppingConfirmed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePizzaEvent.finishedNoToppingConfirmed()';
}


}




/// @nodoc


class CreatePizzaNoToppingCanceled implements CreatePizzaEvent {
  const CreatePizzaNoToppingCanceled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePizzaNoToppingCanceled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePizzaEvent.noToppingCanceled()';
}


}




// dart format on
