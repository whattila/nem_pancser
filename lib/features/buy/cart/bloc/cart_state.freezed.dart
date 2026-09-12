// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState()';
}


}

/// @nodoc
class $CartStateCopyWith<$Res>  {
$CartStateCopyWith(CartState _, $Res Function(CartState) __);
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CartInitialState value)?  initial,TResult Function( CartNormalState value)?  normal,TResult Function( CartErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CartInitialState() when initial != null:
return initial(_that);case CartNormalState() when normal != null:
return normal(_that);case CartErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CartInitialState value)  initial,required TResult Function( CartNormalState value)  normal,required TResult Function( CartErrorState value)  error,}){
final _that = this;
switch (_that) {
case CartInitialState():
return initial(_that);case CartNormalState():
return normal(_that);case CartErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CartInitialState value)?  initial,TResult? Function( CartNormalState value)?  normal,TResult? Function( CartErrorState value)?  error,}){
final _that = this;
switch (_that) {
case CartInitialState() when initial != null:
return initial(_that);case CartNormalState() when normal != null:
return normal(_that);case CartErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<CartItem> items)?  normal,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CartInitialState() when initial != null:
return initial();case CartNormalState() when normal != null:
return normal(_that.items);case CartErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<CartItem> items)  normal,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case CartInitialState():
return initial();case CartNormalState():
return normal(_that.items);case CartErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<CartItem> items)?  normal,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case CartInitialState() when initial != null:
return initial();case CartNormalState() when normal != null:
return normal(_that.items);case CartErrorState() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class CartInitialState implements CartState {
  const CartInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.initial()';
}


}




/// @nodoc


class CartNormalState implements CartState {
  const CartNormalState({final  List<CartItem> items = const []}): _items = items;
  

 final  List<CartItem> _items;
@JsonKey() List<CartItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartNormalStateCopyWith<CartNormalState> get copyWith => _$CartNormalStateCopyWithImpl<CartNormalState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartNormalState&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CartState.normal(items: $items)';
}


}

/// @nodoc
abstract mixin class $CartNormalStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartNormalStateCopyWith(CartNormalState value, $Res Function(CartNormalState) _then) = _$CartNormalStateCopyWithImpl;
@useResult
$Res call({
 List<CartItem> items
});




}
/// @nodoc
class _$CartNormalStateCopyWithImpl<$Res>
    implements $CartNormalStateCopyWith<$Res> {
  _$CartNormalStateCopyWithImpl(this._self, this._then);

  final CartNormalState _self;
  final $Res Function(CartNormalState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(CartNormalState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,
  ));
}


}

/// @nodoc


class CartErrorState implements CartState {
  const CartErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.error()';
}


}




// dart format on
