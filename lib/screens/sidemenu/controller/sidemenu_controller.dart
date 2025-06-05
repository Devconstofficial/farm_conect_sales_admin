import 'dart:ui';

import 'package:get/get.dart';

class SideMenuController extends GetxController {
  var selectedIndex = 0.obs;
  var selectedLanguageCode = 'en'.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  void changeLanguage(String localeCode) {
    selectedLanguageCode.value = localeCode;

    update();
    if (localeCode == 'en') {
      Get.updateLocale(const Locale('en', 'US'));
    } else {
      Get.updateLocale(const Locale('ar', 'SA'));
    }
  }
}