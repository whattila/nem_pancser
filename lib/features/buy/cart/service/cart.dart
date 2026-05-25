import '../../shared/item.dart';

class Cart {

  final items = [];

  void add(Item item) {
    items.add(item);
    print(item);
  }
}