import 'package:flutter/material.dart';
import 'package:matule_app/features/welcome/views/onboard_three_screen.dart';
import 'package:matule_app/features/welcome/views/onboard_two_screen.dart';
import 'package:matule_app/features/welcome/views/onboards_root_screen.dart';
import 'package:matule_app/features/welcome/views/wear_me_screen.dart';

class MatuleApp extends StatelessWidget {
  const MatuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.white,
          onSurface: Colors.black,
          primary: Color(0xff48B2E7),
          onPrimary: Colors.white,
          secondary: Color(0xff6A6A6A),
          onSecondary: Color(0xff2B2B2B),
          surfaceBright: Color(0xffD8D8D8),
        ),
      ),
      home: WearMeScreen(),
    );
  }
}
