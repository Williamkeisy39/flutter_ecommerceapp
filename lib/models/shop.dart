import 'package:flutter/material.dart';
import 'package:flutter_minimal_ecemmerceapp/models/product.dart';

class Shop extends ChangeNotifier {
//product for sale
  final List<Product> _shop = [
    //Product 1
    Product(
      name: "Dress Striped",
      price: 1500,
      description: "Item description..more..",
      imagePath: 'assets/dress.jpg',
    ),
    //product 2
    Product(
      name: "Cap",
      price: 1000,
      description: "Item description..",
      imagePath: 'assets/capnike.png',
    ),
    //product 3
    Product(
      name: "Shoes",
      price: 4500,
      description: "Item description..",
      imagePath: 'assets/nike.jpg',
    ),
    //product 4
    Product(
      name: "Turkey",
      price: 15000,
      description: "Item description..",
      imagePath: 'assets/suitnike.jpg',
    ),
  ];
//user cart
  List<Product> _cart = [];

//get product list
  List<Product> get shop => _shop;

//get user cart
  List<Product> get cart => _cart;

//add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

//remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
