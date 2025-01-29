import 'package:flutter_test/flutter_test.dart';
import 'package:matule_app/utils/validators.dart';

void main() {
  test('emailValidate должен возвращать ошибку для пустого email', () {
    expect(emailValidate(''), 'Поле не может быть пустым');
  });
  
  test('emailValidate должен возвращать ошибку для некорректного email', () {
    expect(emailValidate('invalid-email'), 'Введите корректный Email');
  });
}