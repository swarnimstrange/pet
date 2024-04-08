import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String name;
  final String img;
  final String price;

  CartItem({
    @required this.id,
    @required this.name,
    @required this.img,
    @required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  void addItem(String aid, String name, String img, String price) {
    if (_items.containsKey(aid)) {
      return;
    } else {
      _items.putIfAbsent(
          aid,
          () => CartItem(
              id: DateTime.now().toString(),
              name: name,
              img: img,
              price: price));
    }
    notifyListeners();
  }

  void removeItem(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
