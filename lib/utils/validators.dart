import 'package:email_validator/email_validator.dart';

String? emailValidate(String? value) {
  if (value == null || value.isEmpty) {
    return 'Поле не может быть пустым';
  } else if (!EmailValidator.validate(value)) {
    return 'Введите корректный Email';
  }
  return null;
}

String? passwordValidate(String? value) {
  if (value == null || value.isEmpty) {
    return 'Поле не может быть пустым';
  }
  return null;
}

String? nameValidate(String? value) {
  if (value == null || value.isEmpty) {
    return 'Поле не может быть пустым';
  }
  return null;
}