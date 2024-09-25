import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/widgets/profile_screen_body_widget.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          showBackArrow: true,
          title: Text(
            TextManager.profile,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: const ProfileScreenBodyWidget(),
      ),
    );
  }
}
