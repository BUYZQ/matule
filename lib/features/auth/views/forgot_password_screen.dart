import 'package:flutter/material.dart';
import 'package:matule_app/widgets/my_back_button.dart';
import 'package:matule_app/widgets/my_elevated_button.dart';
import 'package:matule_app/widgets/my_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                  'Забыл Пароль',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  textAlign: TextAlign.center,
                  'Введите Свою Учетную Запись\nДля Сброса',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff707B81),
                  ),
                ),
                SizedBox(height: 30),
                MyTextField(hint: 'xyz@gmail.com'),
                SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: MyElevatedButton(
                    title: 'Отправить',
                    onPressed: _navToOTPScreen,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _navToOTPScreen() async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          content: Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset('images/auth/email.png'),
              ),
              Text(
                'Проверьте Ваш Email',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'Мы Отправили Код Восстановления\nПароля На Вашу Электронную Почту.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xff707B81),
                ),
              ),
            ],
          ),
        );
      },
    );
    Navigator.of(context).pushNamed('/otp');
  }
}
