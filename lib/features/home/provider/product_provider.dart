import 'package:flutter/material.dart';
import 'package:matule_app/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(title: 'Best Seller', subtitle: 'Nike Air Max', price: '₽752.00'),
    Product(title: 'Best Seller', subtitle: 'Nike Air Max', price: '₽752.00'),
  ];

  List<Product> get products => _products;

  List<Product> get favoriteProducts =>
      _products.where((product) => product.isFavorite).toList();

  List<Product> get cartProducts =>
      _products.where((product) => product.isAddToCart).toList();

  void toggleFavorite(Product product) {
    product.isFavorite = !product.isFavorite;
    notifyListeners();
  }

  void addToCart(Product product) {
    product.isAddToCart = true;
    notifyListeners();
  }
}