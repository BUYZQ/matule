import 'package:flutter/material.dart';
import 'package:matule_app/utils/validators.dart';
import 'package:matule_app/widgets/my_back_button.dart';
import 'package:matule_app/widgets/my_elevated_button.dart';
import 'package:matule_app/widgets/my_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
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
                    'Регистрация!',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    textAlign: TextAlign.center,
                    'Заполните Свои Данные Или Продолжите Через Социальные Медиа',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff707B81),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Ваше имя',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  MyTextField(
                    hint: 'xxxxxxxx',
                    validator: nameValidate,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  MyTextField(
                    hint: 'xyz@gmail.com',
                    validator: emailValidate,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  MyTextField(
                    hint: 'qwerty1234',
                    isPassword: true,
                    validator: passwordValidate,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffF7F7F9),
                        ),
                        child: Image.asset('images/auth/check.png'),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Даю согласие на обработку\nперсональных данных',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Raleway',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff707B81),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: MyElevatedButton(
                      title: 'Зарегистрироватеься',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            '/root',
                            (Route route) => false,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Есть аккаунт?',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            SizedBox(width: 4),
            InkWell(
              onTap: _navToLogin,
              child: Text(
                'Войти',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navToLogin() {
    Navigator.of(context).pushNamed('/login');
  }
}
