import 'package:flutter_test/flutter_test.dart';
import 'package:matule_app/utils/validators.dart';

void main() {
  test('passwordValidate должен возвращать ошибку для пустого пароля', () {
    expect(passwordValidate(''), 'Поле не может быть пустым');
  });
}