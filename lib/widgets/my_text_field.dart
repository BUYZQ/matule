import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hint;
  final bool? isPassword;
  final String? Function(String?)? validator;

  const MyTextField({
    super.key,
    required this.hint,
    this.isPassword = false,
    this.validator,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool isPassword = false;
  bool showPassword = false;

  @override
  void initState() {
    if (widget.isPassword == true) {
      isPassword = true;
      showPassword = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      cursorColor: Theme.of(context).colorScheme.onSurface,
      cursorWidth: 1,
      obscureText: showPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF7F7F9),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: Image.asset('images/auth/eye.png'),
              )
            : SizedBox(),
        hintText: widget.hint,
        hintStyle: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.secondary,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            strokeAlign: 0,
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            strokeAlign: 0,
            color: Colors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            strokeAlign: 2,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            strokeAlign: 2,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
