import 'package:flutter/material.dart';
import 'package:flutter_validation_app/feature/presenatation/presentation.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageController>(builder: (langController) {
      return GetBuilder<ValidationController>(
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Validation App'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.language),
                  onPressed: () {
                    langController.changeLanguage();
                    controller.updateErrorLocale();
                  },
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'sign_in'.tr,
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFieldWithError(
                    onChanged: (inputvalue) {
                      controller.onEmailChanged(inputvalue);
                      controller.update();
                    },
                    hintText: 'email'.tr,
                    errorText: controller.emailErrorText.value,
                  ),
                  TextFieldWithError(
                    onChanged: (inputvalue) {
                      controller.onPasswordChanged(inputvalue);
                      controller.update();
                    },
                    hintText: 'password'.tr,
                    errorText: controller.passwordErrorText.value,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      fixedSize: Size(Get.width, 60),
                      elevation: 5,
                    ),
                    onPressed: () {
                      controller.onLogin();
                    },
                    child: Text(
                      'login'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
