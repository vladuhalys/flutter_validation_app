import 'package:flutter_validation_app/lib.dart';
import 'package:get/get.dart';

class ValidationController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;
  final passwordErrorText = ''.obs;
  final emailErrorText = ''.obs;

  void onEmailChanged(String value) {
    email.value = value;
    update();
    validateEmail();
  }

  void onPasswordChanged(String value) {
    password.value = value;
    update();
    validatePassword();
  }

  void validateEmail() {
    if (email.value.isNullOrEmpty()) {
      emailErrorText.value = 'email_required'.tr;
    } else if (!GetUtils.isEmail(email.value)) {
      emailErrorText.value = 'invalid_email'.tr;
    } else {
      emailErrorText.value = '';
    }
    // Get.showSnackbar(
    //   GetSnackBar(
    //     title: 'Email Text Error',
    //     message: emailErrorText.value,
    //     duration: const Duration(seconds: 1),
    //   ),
    // );
    update();
  }

  void updateErrorLocale()
  {
    emailErrorText.value = 'email_required'.tr;
    passwordErrorText.value = 'password_required'.tr;
    update();
  }

  void validatePassword() {
    if (password.value.isNullOrEmpty()) {
      passwordErrorText.value = 'password_required'.tr;
    } else if (password.value.length < 6 && password.value.isNotEmpty) {
      passwordErrorText.value = 'invalid_password'.tr;
    } else {
      passwordErrorText.value = '';
    }
    // Get.showSnackbar(
    //   GetSnackBar(
    //     title: 'Password Text Error',
    //     message: passwordErrorText.value,
    //     duration: const Duration(seconds: 1),
    //   ),
    // );
    update();
  }

  bool get isEmailValid => emailErrorText.value.isNullOrEmpty();
  bool get isPasswordValid => passwordErrorText.value.isNullOrEmpty();

  void onLogin() {
    validateEmail();
    validatePassword();
    if (isEmailValid && isPasswordValid) {
      Get.showSnackbar(
        GetSnackBar(
          title: 'snackbar_titel_info'.tr,
          message: 'snackbar_titel_successful_login'.tr,
          duration: const Duration(seconds: 3),
        ),
      );
    } else {
      Get.showSnackbar(
        GetSnackBar(
          title: 'snackbar_titel_error_login'.tr,
          message: 'snackbar_titel_error_login'.tr,
          duration: const Duration(seconds: 3),
        ),
      );
    }
    update();
  }

  void clearErrors() {
    emailErrorText.value = '';
    passwordErrorText.value = '';
    update();
  }
}
