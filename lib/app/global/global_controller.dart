import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  //앱 최상단에 씌워질 글로벌 컨트롤러.
  //테마, 디바이스 정보 등 앱 전반에서 조작해줘야 하는 것들은 여기에서 선언.

  //디바이스 크기.
  var width = 0.0.obs;
  var height = 0.0.obs;

  var isDarkMode = false.obs;

  final isDeviceThemeDark =
      SchedulerBinding.instance.window.platformBrightness == Brightness.dark;

  lightModeOn(){
    Get.changeThemeMode(ThemeMode.light);
    Get.changeTheme(ThemeData.light(useMaterial3: true));
    isDarkMode.value = false;
  }
  darkModeOn(){
    Get.changeThemeMode(ThemeMode.dark);
    Get.changeTheme(ThemeData.dark(useMaterial3: true));
    isDarkMode.value = true;
  }

  getDeviceTheme() {
    if (isDeviceThemeDark == true) {
      isDarkMode.value = true;
      print('isDark');
      // Get.changeThemeMode(ThemeMode.dark);
      // Get.changeTheme(
      //   ThemeData.dark(useMaterial3: true),
      // );
    } else {
      print('isLight');
      // Get.changeThemeMode(ThemeMode.light);
      // Get.changeTheme(
      //   ThemeData.light(useMaterial3: true),
      // );
    }
  }

  @override
  void onInit() async{
    super.onInit();
    getDeviceTheme();

    width.value = Get.width;
    height.value = Get.height;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
