import 'package:ecommerce_app/common/widgets/elevated_button_widget.dart';
import 'package:ecommerce_app/features/auth/screens/password_configuration/reset_password_screen.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreenBodyWidget extends StatelessWidget {
  const ForgetPasswordScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Headings

          Text(
            TextManager.forgetPasswordTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          Text(
            TextManager.forgetPasswordSubTitle,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          // Text Field
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TextManager.email,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          // submit Button
          ElevatedButtonWidget(
            onPressed: () => Get.off(() => const ResetPasswordScreen()),
            widget: const Text(TextManager.submit),
          ),
        ],
      ),
    );
  }
}
