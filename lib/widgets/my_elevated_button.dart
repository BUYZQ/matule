import 'package:flutter/material.dart';
import 'package:matule_app/widgets/my_button.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  const MyElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MyButton(
      title: title,
      background: Theme.of(context).colorScheme.primary,
      foreground: Theme.of(context).colorScheme.onPrimary,
      onPressed: onPressed,
    );
  }
}
