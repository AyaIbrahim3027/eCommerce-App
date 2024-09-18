import 'package:ecommerce_app/features/auth/screens/widgets/password/forget_password_screen_body_widget.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
          body: const ForgetPasswordScreenBodyWidget(),
    ));
  }
}
