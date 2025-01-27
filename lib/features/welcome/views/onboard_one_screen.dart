import 'package:flutter/material.dart';

class OnboardOneScreen extends StatelessWidget {
  const OnboardOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  textAlign: TextAlign.center,
                  'Добро\nпожаловать'.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset('images/welcome/sneakers.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280, right: 100),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'images/welcome/shade1.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90.0, left: 80.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset('images/welcome/highlight1.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('images/welcome/highlight2.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, bottom: 100.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'images/welcome/highlight3.png',
                  color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, bottom: 100),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'images/welcome/highlight4.png',
                  color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 60),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  'images/welcome/highlight5.png',
                  color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
