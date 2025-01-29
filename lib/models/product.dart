class Product {
  final String title;
  final String subtitle;
  final String price;
  bool isFavorite;
  bool isAddToCart;

  Product({
    required this.title,
    required this.subtitle,
    required this.price,
    this.isFavorite = false,
    this.isAddToCart = false,
  });
}