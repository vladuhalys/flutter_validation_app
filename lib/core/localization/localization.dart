import 'package:get/get.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email': 'Email',
          'password': 'Password',
          'login': 'Login',
          'sign_in': 'Sign In',
          'email_required': 'Email is required',
          'invalid_email': 'Invalid email',
          'password_required': 'Password is required',
          'invalid_password': 'Invalid password',
          'snackbar_titel_info': 'Info',
          'snackbar_titel_error_login': 'Login failed',
          'snackbar_titel_successful_login': 'Login successful',
        },
        'uk_UK': {
          'email': 'Електронна пошта',
          'password': 'Пароль',
          'login': 'Увійти',
          'sign_in': 'Увійти',
          'email_required': 'Електронна пошта обов\'язкова',
          'invalid_email': 'Невірна електронна пошта',
          'password_required': 'Пароль обов\'язковий',
          'invalid_password': 'Невірний пароль',
          'snackbar_titel_info': 'Інформація',
          'snackbar_titel_error_login': 'Помилка входу',
          'snackbar_titel_successful_login': 'Успішний вхід',
        }
      };
}
