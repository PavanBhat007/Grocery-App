import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // final list of items on sale
  final List _shopItems = [
    ["Avocado", "40.00", "lib/assets/avocado.png", Colors.green],
    ["Banana", "20.00", "lib/assets/banana.png", Colors.yellow],
    ["Chicken", "120.00", "lib/assets/chicken.png", Colors.brown],
    ["Water", "10.00", "lib/assets/water.png", Colors.blue],
  ];

  // cart
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
