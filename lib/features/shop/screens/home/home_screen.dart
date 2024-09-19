import 'package:ecommerce_app/features/shop/screens/home/widgets/home_screen_body_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: HomeScreenBodyWidget(),
    ));
  }
}
