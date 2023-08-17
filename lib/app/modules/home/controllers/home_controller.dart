import 'package:get/get.dart';

class HomeController extends GetxController {

  var screenIndex = 0.obs;

  var portfolioFocused = false.obs;
  var projectFocused = false.obs;
  var blogFocused = false.obs;

  var motomeeFocused = false.obs;

  portfolioOn(){
    portfolioFocused.value = true;
    projectFocused.value = false;
    blogFocused.value = false;
    print('port');
  }

  projectOn(){
    portfolioFocused.value = false;
    projectFocused.value = true;
    blogFocused.value = false;
    print('pro');
  }

  blogOn(){
    portfolioFocused.value = false;
    projectFocused.value = false;
    blogFocused.value = true;
    print('blo');
  }

  focusOut(){
    portfolioFocused.value = false;
    projectFocused.value = false;
    blogFocused.value = false;
  }

  @override
  void onInit() {
    super.onInit();
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
