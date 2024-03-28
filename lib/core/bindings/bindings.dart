import 'package:flutter_validation_app/lib.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ValidationController>(() => ValidationController());
    Get.lazyPut<LanguageController>(() => LanguageController());
  }
}
