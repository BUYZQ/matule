import 'package:flutter/material.dart';

class TextFieldOtp extends StatefulWidget {
  final TextEditingController controller;

  const TextFieldOtp({
    super.key,
    required this.controller,
  });

  @override
  State<TextFieldOtp> createState() => _TextFieldOtpState();
}

class _TextFieldOtpState extends State<TextFieldOtp> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 50,
      child: TextFormField(
        onChanged: (value) {
          FocusScope.of(context).nextFocus();
        },
        autofocus: true,
        controller: widget.controller,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Theme.of(context).colorScheme.onSurface,
        cursorWidth: 1,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          isCollapsed: true,
          filled: true,
          fillColor: Color(0xffF7F7F9),
          contentPadding: EdgeInsets.symmetric(vertical: 40),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
