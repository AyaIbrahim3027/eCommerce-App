import 'package:ecommerce_app/features/personalization/screens/settings/widget/settings_screen_body_widget.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: SettingsScreenBodyWidget(),
    ),);
  }
}
