import 'package:flutter/material.dart';
import 'package:matule_app/features/home/provider/product_provider.dart';
import 'package:matule_app/models/product.dart';

class CardProduct extends StatefulWidget {
  final Product product;
  final ProductProvider productProvider;

  const CardProduct({
    super.key,
    required this.product,
    required this.productProvider,
  });

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        children: [
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.productProvider.toggleFavorite(widget.product);
                  });
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: widget.product.isFavorite
                        ? Color(0xffF87265).withValues(alpha: 0.1)
                        : Colors.black.withValues(alpha: 0.3),
                  ),
                  child: Image.asset(
                    'images/home/favorite.png',
                    color: widget.product.isFavorite
                        ? Color(0xffF87265)
                        :Theme.of(context).colorScheme.surface,
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            'images/home/nike.png',
          ),
          Row(
            children: [
              SizedBox(width: 10),
              Text(
                'Best Seller'.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10),
              Text(
                'Nike Air Max',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10),
              Text(
                '₽752.00',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              Spacer(),
              SizedBox(
                height: 35,
                width: 35,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if(widget.product.isAddToCart == false) {
                        setState(() {
                          widget.productProvider.addToCart(widget.product);
                        });
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      overlayColor: Colors.white,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      padding: EdgeInsets.all(0)
                  ),
                  child: widget.product.isAddToCart
                      ? Image.asset('images/home/cart.png')
                      : Image.asset('images/home/plus.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
