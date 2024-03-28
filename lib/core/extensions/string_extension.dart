import 'package:get/get.dart';

extension NullOrEmptyExtension on String {
  bool isNullOrEmpty() {
    String? value = this;
    return GetUtils.isNull(value) || value.isEmpty;
  }
}
