import 'package:ecommerce_app/features/personalization/screens/profile/widgets/profile_image.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreenBodyWidget extends StatelessWidget {
  const ProfileScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Profile img
            ProfileImage(),
          ],
        ),
      ),
    );
  }
}

