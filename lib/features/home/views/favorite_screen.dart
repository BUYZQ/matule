import 'package:flutter/material.dart';
import 'package:matule_app/features/home/provider/product_provider.dart';
import 'package:matule_app/features/home/widgets/card_product.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, productProvider, child) {
        if(productProvider.favoriteProducts.isNotEmpty) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              childAspectRatio: 0.88,
            ),
            itemCount: productProvider.favoriteProducts.length,
            itemBuilder: (context, index) {
              final product = productProvider.favoriteProducts[index];
              return Padding(
                padding: const EdgeInsets.all(4),
                child: CardProduct(
                  product: product,
                  productProvider: productProvider,
                ),
              );
            },
          );
        }
        return Center(child: Text('Нет понравившихся товаров'));
      },
    );
  }
}
