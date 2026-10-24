// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_details.event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DishDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishDetailsEvent()';
}


}

/// @nodoc
class $DishDetailsEventCopyWith<$Res>  {
$DishDetailsEventCopyWith(DishDetailsEvent _, $Res Function(DishDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [DishDetailsEvent].
extension DishDetailsEventPatterns on DishDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DishDetailsLoadingRequested value)?  loadingRequested,TResult Function( DishDetailsSelectedSideDishChanged value)?  selectedSideDishChanged,TResult Function( DishDetailsSelectedMeatOptionChanged value)?  selectedMeatOptionChanged,TResult Function( DishDetailsSaladExtraSelectionChanged value)?  saladExtraSelectionChanged,TResult Function( DishDetailsAmountIncreased value)?  amountIncreased,TResult Function( DishDetailsAmountDecreased value)?  amountDecreased,TResult Function( DishDetailsFinished value)?  finished,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DishDetailsLoadingRequested() when loadingRequested != null:
return loadingRequested(_that);case DishDetailsSelectedSideDishChanged() when selectedSideDishChanged != null:
return selectedSideDishChanged(_that);case DishDetailsSelectedMeatOptionChanged() when selectedMeatOptionChanged != null:
return selectedMeatOptionChanged(_that);case DishDetailsSaladExtraSelectionChanged() when saladExtraSelectionChanged != null:
return saladExtraSelectionChanged(_that);case DishDetailsAmountIncreased() when amountIncreased != null:
return amountIncreased(_that);case DishDetailsAmountDecreased() when amountDecreased != null:
return amountDecreased(_that);case DishDetailsFinished() when finished != null:
return finished(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DishDetailsLoadingRequested value)  loadingRequested,required TResult Function( DishDetailsSelectedSideDishChanged value)  selectedSideDishChanged,required TResult Function( DishDetailsSelectedMeatOptionChanged value)  selectedMeatOptionChanged,required TResult Function( DishDetailsSaladExtraSelectionChanged value)  saladExtraSelectionChanged,required TResult Function( DishDetailsAmountIncreased value)  amountIncreased,required TResult Function( DishDetailsAmountDecreased value)  amountDecreased,required TResult Function( DishDetailsFinished value)  finished,}){
final _that = this;
switch (_that) {
case DishDetailsLoadingRequested():
return loadingRequested(_that);case DishDetailsSelectedSideDishChanged():
return selectedSideDishChanged(_that);case DishDetailsSelectedMeatOptionChanged():
return selectedMeatOptionChanged(_that);case DishDetailsSaladExtraSelectionChanged():
return saladExtraSelectionChanged(_that);case DishDetailsAmountIncreased():
return amountIncreased(_that);case DishDetailsAmountDecreased():
return amountDecreased(_that);case DishDetailsFinished():
return finished(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DishDetailsLoadingRequested value)?  loadingRequested,TResult? Function( DishDetailsSelectedSideDishChanged value)?  selectedSideDishChanged,TResult? Function( DishDetailsSelectedMeatOptionChanged value)?  selectedMeatOptionChanged,TResult? Function( DishDetailsSaladExtraSelectionChanged value)?  saladExtraSelectionChanged,TResult? Function( DishDetailsAmountIncreased value)?  amountIncreased,TResult? Function( DishDetailsAmountDecreased value)?  amountDecreased,TResult? Function( DishDetailsFinished value)?  finished,}){
final _that = this;
switch (_that) {
case DishDetailsLoadingRequested() when loadingRequested != null:
return loadingRequested(_that);case DishDetailsSelectedSideDishChanged() when selectedSideDishChanged != null:
return selectedSideDishChanged(_that);case DishDetailsSelectedMeatOptionChanged() when selectedMeatOptionChanged != null:
return selectedMeatOptionChanged(_that);case DishDetailsSaladExtraSelectionChanged() when saladExtraSelectionChanged != null:
return saladExtraSelectionChanged(_that);case DishDetailsAmountIncreased() when amountIncreased != null:
return amountIncreased(_that);case DishDetailsAmountDecreased() when amountDecreased != null:
return amountDecreased(_that);case DishDetailsFinished() when finished != null:
return finished(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DishHeader header)?  loadingRequested,TResult Function( SideDish? sideDish)?  selectedSideDishChanged,TResult Function( MeatOption? meatOption)?  selectedMeatOptionChanged,TResult Function( SaladExtra saladExtra)?  saladExtraSelectionChanged,TResult Function()?  amountIncreased,TResult Function()?  amountDecreased,TResult Function()?  finished,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DishDetailsLoadingRequested() when loadingRequested != null:
return loadingRequested(_that.header);case DishDetailsSelectedSideDishChanged() when selectedSideDishChanged != null:
return selectedSideDishChanged(_that.sideDish);case DishDetailsSelectedMeatOptionChanged() when selectedMeatOptionChanged != null:
return selectedMeatOptionChanged(_that.meatOption);case DishDetailsSaladExtraSelectionChanged() when saladExtraSelectionChanged != null:
return saladExtraSelectionChanged(_that.saladExtra);case DishDetailsAmountIncreased() when amountIncreased != null:
return amountIncreased();case DishDetailsAmountDecreased() when amountDecreased != null:
return amountDecreased();case DishDetailsFinished() when finished != null:
return finished();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DishHeader header)  loadingRequested,required TResult Function( SideDish? sideDish)  selectedSideDishChanged,required TResult Function( MeatOption? meatOption)  selectedMeatOptionChanged,required TResult Function( SaladExtra saladExtra)  saladExtraSelectionChanged,required TResult Function()  amountIncreased,required TResult Function()  amountDecreased,required TResult Function()  finished,}) {final _that = this;
switch (_that) {
case DishDetailsLoadingRequested():
return loadingRequested(_that.header);case DishDetailsSelectedSideDishChanged():
return selectedSideDishChanged(_that.sideDish);case DishDetailsSelectedMeatOptionChanged():
return selectedMeatOptionChanged(_that.meatOption);case DishDetailsSaladExtraSelectionChanged():
return saladExtraSelectionChanged(_that.saladExtra);case DishDetailsAmountIncreased():
return amountIncreased();case DishDetailsAmountDecreased():
return amountDecreased();case DishDetailsFinished():
return finished();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DishHeader header)?  loadingRequested,TResult? Function( SideDish? sideDish)?  selectedSideDishChanged,TResult? Function( MeatOption? meatOption)?  selectedMeatOptionChanged,TResult? Function( SaladExtra saladExtra)?  saladExtraSelectionChanged,TResult? Function()?  amountIncreased,TResult? Function()?  amountDecreased,TResult? Function()?  finished,}) {final _that = this;
switch (_that) {
case DishDetailsLoadingRequested() when loadingRequested != null:
return loadingRequested(_that.header);case DishDetailsSelectedSideDishChanged() when selectedSideDishChanged != null:
return selectedSideDishChanged(_that.sideDish);case DishDetailsSelectedMeatOptionChanged() when selectedMeatOptionChanged != null:
return selectedMeatOptionChanged(_that.meatOption);case DishDetailsSaladExtraSelectionChanged() when saladExtraSelectionChanged != null:
return saladExtraSelectionChanged(_that.saladExtra);case DishDetailsAmountIncreased() when amountIncreased != null:
return amountIncreased();case DishDetailsAmountDecreased() when amountDecreased != null:
return amountDecreased();case DishDetailsFinished() when finished != null:
return finished();case _:
  return null;

}
}

}

/// @nodoc


class DishDetailsLoadingRequested implements DishDetailsEvent {
  const DishDetailsLoadingRequested({required this.header});
  

 final  DishHeader header;

/// Create a copy of DishDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishDetailsLoadingRequestedCopyWith<DishDetailsLoadingRequested> get copyWith => _$DishDetailsLoadingRequestedCopyWithImpl<DishDetailsLoadingRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsLoadingRequested&&(identical(other.header, header) || other.header == header));
}


@override
int get hashCode => Object.hash(runtimeType,header);

@override
String toString() {
  return 'DishDetailsEvent.loadingRequested(header: $header)';
}


}

/// @nodoc
abstract mixin class $DishDetailsLoadingRequestedCopyWith<$Res> implements $DishDetailsEventCopyWith<$Res> {
  factory $DishDetailsLoadingRequestedCopyWith(DishDetailsLoadingRequested value, $Res Function(DishDetailsLoadingRequested) _then) = _$DishDetailsLoadingRequestedCopyWithImpl;
@useResult
$Res call({
 DishHeader header
});


$DishHeaderCopyWith<$Res> get header;

}
/// @nodoc
class _$DishDetailsLoadingRequestedCopyWithImpl<$Res>
    implements $DishDetailsLoadingRequestedCopyWith<$Res> {
  _$DishDetailsLoadingRequestedCopyWithImpl(this._self, this._then);

  final DishDetailsLoadingRequested _self;
  final $Res Function(DishDetailsLoadingRequested) _then;

/// Create a copy of DishDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? header = null,}) {
  return _then(DishDetailsLoadingRequested(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as DishHeader,
  ));
}

/// Create a copy of DishDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishHeaderCopyWith<$Res> get header {
  
  return $DishHeaderCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}
}

/// @nodoc


class DishDetailsSelectedSideDishChanged implements DishDetailsEvent {
  const DishDetailsSelectedSideDishChanged({required this.sideDish});
  

 final  SideDish? sideDish;

/// Create a copy of DishDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishDetailsSelectedSideDishChangedCopyWith<DishDetailsSelectedSideDishChanged> get copyWith => _$DishDetailsSelectedSideDishChangedCopyWithImpl<DishDetailsSelectedSideDishChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsSelectedSideDishChanged&&const DeepCollectionEquality().equals(other.sideDish, sideDish));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sideDish));

@override
String toString() {
  return 'DishDetailsEvent.selectedSideDishChanged(sideDish: $sideDish)';
}


}

/// @nodoc
abstract mixin class $DishDetailsSelectedSideDishChangedCopyWith<$Res> implements $DishDetailsEventCopyWith<$Res> {
  factory $DishDetailsSelectedSideDishChangedCopyWith(DishDetailsSelectedSideDishChanged value, $Res Function(DishDetailsSelectedSideDishChanged) _then) = _$DishDetailsSelectedSideDishChangedCopyWithImpl;
@useResult
$Res call({
 SideDish? sideDish
});




}
/// @nodoc
class _$DishDetailsSelectedSideDishChangedCopyWithImpl<$Res>
    implements $DishDetailsSelectedSideDishChangedCopyWith<$Res> {
  _$DishDetailsSelectedSideDishChangedCopyWithImpl(this._self, this._then);

  final DishDetailsSelectedSideDishChanged _self;
  final $Res Function(DishDetailsSelectedSideDishChanged) _then;

/// Create a copy of DishDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sideDish = freezed,}) {
  return _then(DishDetailsSelectedSideDishChanged(
sideDish: freezed == sideDish ? _self.sideDish : sideDish // ignore: cast_nullable_to_non_nullable
as SideDish?,
  ));
}


}

/// @nodoc


class DishDetailsSelectedMeatOptionChanged implements DishDetailsEvent {
  const DishDetailsSelectedMeatOptionChanged({required this.meatOption});
  

 final  MeatOption? meatOption;

/// Create a copy of DishDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishDetailsSelectedMeatOptionChangedCopyWith<DishDetailsSelectedMeatOptionChanged> get copyWith => _$DishDetailsSelectedMeatOptionChangedCopyWithImpl<DishDetailsSelectedMeatOptionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsSelectedMeatOptionChanged&&const DeepCollectionEquality().equals(other.meatOption, meatOption));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(meatOption));

@override
String toString() {
  return 'DishDetailsEvent.selectedMeatOptionChanged(meatOption: $meatOption)';
}


}

/// @nodoc
abstract mixin class $DishDetailsSelectedMeatOptionChangedCopyWith<$Res> implements $DishDetailsEventCopyWith<$Res> {
  factory $DishDetailsSelectedMeatOptionChangedCopyWith(DishDetailsSelectedMeatOptionChanged value, $Res Function(DishDetailsSelectedMeatOptionChanged) _then) = _$DishDetailsSelectedMeatOptionChangedCopyWithImpl;
@useResult
$Res call({
 MeatOption? meatOption
});




}
/// @nodoc
class _$DishDetailsSelectedMeatOptionChangedCopyWithImpl<$Res>
    implements $DishDetailsSelectedMeatOptionChangedCopyWith<$Res> {
  _$DishDetailsSelectedMeatOptionChangedCopyWithImpl(this._self, this._then);

  final DishDetailsSelectedMeatOptionChanged _self;
  final $Res Function(DishDetailsSelectedMeatOptionChanged) _then;

/// Create a copy of DishDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meatOption = freezed,}) {
  return _then(DishDetailsSelectedMeatOptionChanged(
meatOption: freezed == meatOption ? _self.meatOption : meatOption // ignore: cast_nullable_to_non_nullable
as MeatOption?,
  ));
}


}

/// @nodoc


class DishDetailsSaladExtraSelectionChanged implements DishDetailsEvent {
  const DishDetailsSaladExtraSelectionChanged({required this.saladExtra});
  

 final  SaladExtra saladExtra;

/// Create a copy of DishDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DishDetailsSaladExtraSelectionChangedCopyWith<DishDetailsSaladExtraSelectionChanged> get copyWith => _$DishDetailsSaladExtraSelectionChangedCopyWithImpl<DishDetailsSaladExtraSelectionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsSaladExtraSelectionChanged&&const DeepCollectionEquality().equals(other.saladExtra, saladExtra));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(saladExtra));

@override
String toString() {
  return 'DishDetailsEvent.saladExtraSelectionChanged(saladExtra: $saladExtra)';
}


}

/// @nodoc
abstract mixin class $DishDetailsSaladExtraSelectionChangedCopyWith<$Res> implements $DishDetailsEventCopyWith<$Res> {
  factory $DishDetailsSaladExtraSelectionChangedCopyWith(DishDetailsSaladExtraSelectionChanged value, $Res Function(DishDetailsSaladExtraSelectionChanged) _then) = _$DishDetailsSaladExtraSelectionChangedCopyWithImpl;
@useResult
$Res call({
 SaladExtra saladExtra
});




}
/// @nodoc
class _$DishDetailsSaladExtraSelectionChangedCopyWithImpl<$Res>
    implements $DishDetailsSaladExtraSelectionChangedCopyWith<$Res> {
  _$DishDetailsSaladExtraSelectionChangedCopyWithImpl(this._self, this._then);

  final DishDetailsSaladExtraSelectionChanged _self;
  final $Res Function(DishDetailsSaladExtraSelectionChanged) _then;

/// Create a copy of DishDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? saladExtra = freezed,}) {
  return _then(DishDetailsSaladExtraSelectionChanged(
saladExtra: freezed == saladExtra ? _self.saladExtra : saladExtra // ignore: cast_nullable_to_non_nullable
as SaladExtra,
  ));
}


}

/// @nodoc


class DishDetailsAmountIncreased implements DishDetailsEvent {
  const DishDetailsAmountIncreased();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsAmountIncreased);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishDetailsEvent.amountIncreased()';
}


}




/// @nodoc


class DishDetailsAmountDecreased implements DishDetailsEvent {
  const DishDetailsAmountDecreased();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsAmountDecreased);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishDetailsEvent.amountDecreased()';
}


}




/// @nodoc


class DishDetailsFinished implements DishDetailsEvent {
  const DishDetailsFinished();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DishDetailsFinished);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DishDetailsEvent.finished()';
}


}




// dart format on
