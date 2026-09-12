// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CartOpened value)?  opened,TResult Function( CartItemDeleted value)?  itemDeleted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CartOpened() when opened != null:
return opened(_that);case CartItemDeleted() when itemDeleted != null:
return itemDeleted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CartOpened value)  opened,required TResult Function( CartItemDeleted value)  itemDeleted,}){
final _that = this;
switch (_that) {
case CartOpened():
return opened(_that);case CartItemDeleted():
return itemDeleted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CartOpened value)?  opened,TResult? Function( CartItemDeleted value)?  itemDeleted,}){
final _that = this;
switch (_that) {
case CartOpened() when opened != null:
return opened(_that);case CartItemDeleted() when itemDeleted != null:
return itemDeleted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  opened,TResult Function( CartItem item)?  itemDeleted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CartOpened() when opened != null:
return opened();case CartItemDeleted() when itemDeleted != null:
return itemDeleted(_that.item);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  opened,required TResult Function( CartItem item)  itemDeleted,}) {final _that = this;
switch (_that) {
case CartOpened():
return opened();case CartItemDeleted():
return itemDeleted(_that.item);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  opened,TResult? Function( CartItem item)?  itemDeleted,}) {final _that = this;
switch (_that) {
case CartOpened() when opened != null:
return opened();case CartItemDeleted() when itemDeleted != null:
return itemDeleted(_that.item);case _:
  return null;

}
}

}

/// @nodoc


class CartOpened implements CartEvent {
  const CartOpened();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartOpened);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.opened()';
}


}




/// @nodoc


class CartItemDeleted implements CartEvent {
  const CartItemDeleted({required this.item});
  

 final  CartItem item;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemDeletedCopyWith<CartItemDeleted> get copyWith => _$CartItemDeletedCopyWithImpl<CartItemDeleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemDeleted&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'CartEvent.itemDeleted(item: $item)';
}


}

/// @nodoc
abstract mixin class $CartItemDeletedCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $CartItemDeletedCopyWith(CartItemDeleted value, $Res Function(CartItemDeleted) _then) = _$CartItemDeletedCopyWithImpl;
@useResult
$Res call({
 CartItem item
});


$CartItemCopyWith<$Res> get item;

}
/// @nodoc
class _$CartItemDeletedCopyWithImpl<$Res>
    implements $CartItemDeletedCopyWith<$Res> {
  _$CartItemDeletedCopyWithImpl(this._self, this._then);

  final CartItemDeleted _self;
  final $Res Function(CartItemDeleted) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(CartItemDeleted(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as CartItem,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartItemCopyWith<$Res> get item {
  
  return $CartItemCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

// dart format on
