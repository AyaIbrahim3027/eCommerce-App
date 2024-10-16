import 'package:ecommerce_app/features/auth/screens/login/login_screen.dart';
import 'package:ecommerce_app/features/auth/screens/onboarding/onboarding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // Called from main on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // to show relevant screen
  void screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

  // Email & Password Sign in:

  // Email Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.toString());
    } on FirebaseException catch (e) {
      throw FirebaseException(plugin: e.toString());
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw PlatformException(code: e.toString());
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
