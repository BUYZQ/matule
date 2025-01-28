import 'package:matule_app/features/auth/views/forgot_password_screen.dart';
import 'package:matule_app/features/auth/views/login_screen.dart';
import 'package:matule_app/features/auth/views/otp_screen.dart';
import 'package:matule_app/features/auth/views/register_screen.dart';
import 'package:matule_app/features/root/root_screen.dart';
import 'package:matule_app/features/welcome/views/wear_me_screen.dart';

final routes = {
  '/': (context) => WearMeScreen(),
  '/login': (context) => LoginScreen(),
  '/register': (context) => RegisterScreen(),
  '/forgot_password': (context) => ForgotPasswordScreen(),
  '/otp': (context) => OtpScreen(),
  '/root': (context) => RootScreen(),
};