import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color background;
  final Color foreground;
  final Function()? onPressed;

  const MyButton({
    super.key,
    required this.title,
    required this.background,
    required this.foreground,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        backgroundColor: background,
        foregroundColor: foreground,
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
