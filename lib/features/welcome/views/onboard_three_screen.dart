import 'package:flutter/material.dart';

class OnboardThreeScreen extends StatelessWidget {
  const OnboardThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('images/welcome/sneakers3.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  'У Вас Есть Сила,\nЧтобы',
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
                  'В вашей комнате много красивых и\nпривлекательных растений',
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
