import 'package:ecommerce_app/app.dart';
import 'package:ecommerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  // Widget Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Local Storage
  await GetStorage.init();

  // Splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // ).then((FirebaseApp value)=> Get.put(AuthenticationRepository()));

  runApp(const App());
}
