import 'package:flutter/material.dart';
import 'package:matule_app/routes/routes.dart';

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
      routes: routes,
    );
  }
}
