import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  final Function()? onPressed;

  const MyBackButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffF7F7F9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Image.asset('images/auth/back.png'),
      ),
    );
  }
}
