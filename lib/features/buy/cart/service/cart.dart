import 'package:rxdart/rxdart.dart';

import '../../shared/item.dart';

class Cart {
  final List<Item> _items = [];

  final _itemsSubject = BehaviorSubject<List<Item>>.seeded([]);

  Stream<List<Item>> get items =>
      _itemsSubject.stream;

  void add(Item item) {
    _items.add(item);
    _itemsSubject.add(List.unmodifiable(_items));
  }

  void remove(Item item) {
    _items.remove(item);
    _itemsSubject.add(List.unmodifiable(_items));
  }

  void dispose() {
    _itemsSubject.close();
  }
}