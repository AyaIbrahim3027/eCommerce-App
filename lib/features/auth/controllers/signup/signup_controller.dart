import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/network/network_manager.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:ecommerce_app/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();

  final hidePassword = true.obs; // hide or show password

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // Signup
  Future<void> signup() async {
    try {
      // Loading
      FullScreenLoader.openLoadingDialog(
          'We are processing your information...', ImageManager.loading);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validation
      if (!signupFormKey.currentState!.validate()) return;

      // Check Privacy Policy

      // Register user in firebase auth. & save user data in the firebase

      // Save auth. user data in the firebase firestore

      // Show success msg
    } catch (e) {
      Loaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    } finally {
      FullScreenLoader.stopLoading();
    }
  }
}
