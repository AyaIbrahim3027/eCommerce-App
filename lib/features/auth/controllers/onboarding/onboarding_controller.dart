import 'package:ecommerce_app/features/auth/screens/login/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Current Index & jump to next page
  void nextPage() {
    if(currentPageIndex.value == 2){
      final deviceStorage = GetStorage();

      if(kDebugMode){
        print('GET STORAGE NEXT BUTTON');
        print(deviceStorage.read('IsFirstTime'));
      }

      deviceStorage.write('IsFirstTime', false);

      if(kDebugMode){
        print('GET STORAGE NEXT BUTTON');
        print(deviceStorage.read('IsFirstTime'));
      }

      Get.offAll(const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update Current Index & jump to the Lost Page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
