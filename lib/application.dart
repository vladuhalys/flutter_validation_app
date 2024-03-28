import 'package:flutter/material.dart';
import 'package:flutter_validation_app/lib.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Validation App',
      translations: AppLocalization(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'UK'),
      initialBinding: AppBindings(),
      initialRoute: AppRouter.login,
      getPages: [
        GetPage(name: AppRouter.login, page: () => const LoginScreen()),
      ],
    );
  }
}
