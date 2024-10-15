import 'package:ecommerce_app/common/widgets/loaders/animation_loader.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get
          .overlayContext!, // Use Get.overlayContext for overlay dialogs barrierDismissible: false, // The dialog can't be dismissed by tapping outside i
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false, // Disable popping with the back button
        child: Container(
          color: HelperFunctions.isDarkMode(Get.context!)
              ? ColorManager.dark
              : ColorManager.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                  height: AppSizes.h_250), // Adjust the spacing as needed
              AnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    ); // Container PopScope
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
