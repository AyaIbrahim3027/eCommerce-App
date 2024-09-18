import 'package:ecommerce_app/features/auth/screens/widgets/signup/signup_screen_body_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const SignUpScreenBodyWidget(),
      ),
    );
  }
}
