import 'package:ecommerce_app/features/auth/screens/login/login_screen.dart';
import 'package:ecommerce_app/features/auth/screens/widgets/signup/verify_email_screen_body_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear),
            ),
          ],
        ),
        body: const VerifyEmailScreenBodyWidget(),
      ),
    );
  }
}
