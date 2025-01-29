import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
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
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('images/home/bag.png')
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Image.asset('images/home/search.png'),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 22),
                    hintText: 'Поиск',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
