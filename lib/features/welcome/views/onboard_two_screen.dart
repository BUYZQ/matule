import 'package:flutter/material.dart';

class OnboardTwoScreen extends StatelessWidget {
  const OnboardTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 30),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset('images/welcome/highlight3.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset('images/welcome/highlight4.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('images/welcome/sneakers2.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset('images/welcome/shade2.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  'Начнем\nпутешествие',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  'Умная, великолепная и модная\nколлекция Изучите сейчас',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.surfaceBright,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
