import 'package:ecommerce_app/features/auth/screens/widgets/login/login_screen_body_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginScreenBodyWidget(),
    );
  }
}

