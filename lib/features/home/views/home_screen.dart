import 'package:flutter/material.dart';
import 'package:matule_app/features/home/provider/product_provider.dart';
import 'package:matule_app/features/home/widgets/card_product.dart';
import 'package:matule_app/widgets/category_button.dart';
import 'package:matule_app/widgets/search_field.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, productProvider, child) {
        return ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 150),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('images/home/highlight.png'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/home/menu.png'),
                    ),
                    Text(
                      'Главная',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                    Badge(
                      isLabelVisible: productProvider.cartProducts.isNotEmpty ? true : false,
                      alignment: Alignment.topRight,
                      backgroundColor: Color(0xffF87265),
                      smallSize: 8,
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('images/home/bag.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              spacing: 10,
              children: [
                Expanded(child: SearchField()),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: Transform.scale(
                      scale: 2.2,
                      child: Image.asset(
                        'images/home/sliders.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 5),
                Text(
                  'Категории',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: [
                  CategoryButton(title: 'Все'),
                  CategoryButton(title: 'Outdoor'),
                  CategoryButton(title: 'Tennis'),
                  CategoryButton(title: 'Running'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Популярное',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                Text(
                  'Все',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: CardProduct(
                    product: productProvider.products[0],
                    productProvider: productProvider,
                  ),
                ),
                Expanded(
                  child: CardProduct(
                    product: productProvider.products[1],
                    productProvider: productProvider,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Акции',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                Text(
                  'Все',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Transform.scale(
              scale: 1.15,
              child: Image.asset('images/home/banner.png'),
            ),
            SizedBox(height: 100),
          ],
        );
      },
    );
  }
}
