import 'package:ecommerce_app/common/widgets/profile_menu.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/common/widgets/text_button_widget.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/widgets/profile_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreenBodyWidget extends StatelessWidget {
  const ProfileScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Profile img
            const ProfileImage(),

            // Details
            const SizedBox(height: AppSizes.sm),
            const Divider(),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // Heading Profile Info
            const SectionHeading(
              title: TextManager.profileInfo,
              showActionButton: false,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),

            ProfileMenu(
              title: TextManager.name,
              value: TextManager.myName,
              onTap: () {},
            ),
            ProfileMenu(
              title: TextManager.username,
              value: TextManager.myUserName,
              onTap: () {},
            ),

            const SizedBox(height: AppSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // Heading Personal Info
            const SectionHeading(
              title: TextManager.personalInfo,
              showActionButton: false,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),

            ProfileMenu(
                title: TextManager.userId,
                value: TextManager.myUserId,
                icon: Iconsax.copy,
                onTap: () {}),
            ProfileMenu(
                title: TextManager.email,
                value: TextManager.myEmail,
                onTap: () {}),
            ProfileMenu(
                title: TextManager.phoneNo,
                value: TextManager.myPhoneNo,
                onTap: () {}),
            ProfileMenu(
                title: TextManager.gender,
                value: TextManager.femaleGender,
                onTap: () {}),
            ProfileMenu(
                title: TextManager.dateOfBirth,
                value: TextManager.myDateOfBirth,
                onTap: () {}),

            const SizedBox(height: AppSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: AppSizes.spaceBtwItems),

            TextButtonWidget(
              onPressed: () {},
              text: TextManager.closeAccount,
              textStyle: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .apply(color: ColorManager.red),
            ),
          ],
        ),
      ),
    );
  }
}
