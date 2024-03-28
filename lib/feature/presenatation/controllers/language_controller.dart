import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  final language = Get.deviceLocale.obs;

  void changeLanguage() {
    if (language.value == const Locale('en', 'US')) {
      language.value = const Locale('uk', 'UK');
    } else {
      language.value = const Locale('en', 'US');
    }
    Get.updateLocale(language.value!);
  }
}
