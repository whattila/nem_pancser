import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/buy/cart/bloc/cart_event.dart';
import 'package:nem_pancser/features/buy/cart/bloc/cart_state.dart';
import 'package:nem_pancser/features/buy/cart/service/cart.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this._cart) : super(const CartInitialState()) {
    on<CartOpened>(_onOpened);
    on<CartItemDeleted>(_onItemDeleted);
  }

  final Cart _cart;

  Future<void> _onOpened(CartOpened event, Emitter<CartState> emit) async {
    await emit.forEach(
      _cart.items,
      onData: (items) => CartInUseState(items: items),
      onError: (_, _) => const CartErrorState(),
    );
  }

  void _onItemDeleted(CartItemDeleted event, Emitter<CartState> emit) {
    _cart.remove(event.item);
  }
}
