// import 'package:flutter/material.dart';
// import '../models/cart_item.dart';

// class CartProvider with ChangeNotifier {
//   final Map<String, CartItem> _items = {};

//   Map<String, CartItem> get items => _items;

//   void addToCart(String id, String name, double price, String imageUrl) {
//     if (_items.containsKey(id)) {
//       _items.update(
//         id,
//         (existing) => CartItem(
//           id: existing.id,
//           name: existing.name,
//           price: existing.price,
//           quantity: existing.quantity + 1,
//           imageUrl: existing.imageUrl,
//         ),
//       );
//     } else {
//       _items.putIfAbsent(
//         id,
//         () => CartItem(
//           id: id,
//           name: name,
//           price: price,
//           quantity: 1,
//           imageUrl: imageUrl,
//         ),
//       );
//     }
//     saveCartToPrefs();
//     notifyListeners();
//   }

//   int get itemCount => _items.length;

//   double get totalAmount {
//     double total = 0.0;
//     _items.forEach((key, item) {
//       total += item.price * item.quantity;
//     });
//     return total;
//   }

//   void clearCart() {
//     _items.clear();
//     notifyListeners();
//   }

//   void removeItem(String productId) {
//     _items.remove(productId);
//     notifyListeners();
//   }
// }



import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';//
import '../models/cart_item.dart';

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  void addToCart(String id, String name, double price, String imageUrl) {
    if (_items.containsKey(id)) {
      _items.update(
        id,
        (existing) => CartItem(
          id: existing.id,
          name: existing.name,
          price: existing.price,
          quantity: existing.quantity + 1,
          imageUrl: existing.imageUrl,
        ),
      );
    } else {
      _items.putIfAbsent(
        id,
        () => CartItem(
          id: id,
          name: name,
          price: price,
          quantity: 1,
          imageUrl: imageUrl,
        ),
      );
    }
    saveCartToPrefs();//save to prefs
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    saveCartToPrefs(); //save to prefs
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    saveCartToPrefs(); //save to prefs
    notifyListeners();
  }

  int get itemCount => _items.length;

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, item) {
      total += item.price * item.quantity;
    });
    return total;
  }

  // Persistence Methods Below
  Future<void> saveCartToPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final cartData = _items.map(
      (key, item) => MapEntry(
        key,
        json.encode({
          'id': item.id,
          'name': item.name,
          'quantity': item.quantity,
          'price': item.price,
          'imageUrl': item.imageUrl,
        }),
      ),  
    );
    await prefs.setString('cart', json.encode(cartData));
  }

  Future<void> loadCartFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('cart')) return;

    final extractedData =
        json.decode(prefs.getString('cart')!) as Map<String, dynamic>;

    _items.clear();

    extractedData.forEach((key, value) {
      final item = json.decode(value);
      _items[key] = CartItem(
        id: item['id'],
        name: item['name'],
        price: item['price'],
        quantity: item['quantity'],
        imageUrl: item['imageUrl'],
      );
    });

    notifyListeners();
  }
}
