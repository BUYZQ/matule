import 'dart:async';
import 'package:flutter/material.dart';
import 'package:matule_app/features/auth/widget/text_field_otp.dart';
import 'package:matule_app/widgets/my_back_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final _formKey = GlobalKey<FormState>();

  Timer? _timer;

  int _counter = 30;

  @override
  void initState() {
    if(_counter == 30) {
      _startTimer();
    }
    super.initState();
  }

  void _startTimer() {
    setState(() {
      _counter = 30;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (tick) {
      if(_counter > 0) {
        setState(() {
          _counter--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();
  final TextEditingController controller5 = TextEditingController();
  final TextEditingController controller6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    MyBackButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Text(
                  'OTP проверка',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  textAlign: TextAlign.center,
                  'Пожалуйста, Проверьте Свою\nЭлектронную Почту, Чтобы Увидеть\nКод Подтверждения',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff707B81),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'OTP Код',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 14,
                    children: [
                      TextFieldOtp(controller: controller1),
                      TextFieldOtp(controller: controller2),
                      TextFieldOtp(controller: controller3),
                      TextFieldOtp(controller: controller4),
                      TextFieldOtp(controller: controller5),
                      TextFieldOtp(
                        controller: controller6,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        if(_counter == 0) {
                          _startTimer();
                        } else {
                          return;
                        }
                      },
                      child: Text(
                        'Отправить заново',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff7D848D)
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      _counter < 10 ? '00:0$_counter' : '00:$_counter',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff7D848D)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}