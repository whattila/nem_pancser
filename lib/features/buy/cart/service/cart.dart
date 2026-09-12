import 'package:rxdart/rxdart.dart';

import '../model/cart_item.dart';

class Cart {
  final List<CartItem> _items = [];

  final _itemsSubject = BehaviorSubject<List<CartItem>>.seeded([]);

  Stream<List<CartItem>> get items =>
      _itemsSubject.stream;

  void add(CartItem item) {
    _items.add(item);
    _itemsSubject.add(List.unmodifiable(_items));
  }

  void remove(CartItem item) {
    _items.remove(item);
    _itemsSubject.add(List.unmodifiable(_items));
  }

  void dispose() {
    _itemsSubject.close();
  }
}