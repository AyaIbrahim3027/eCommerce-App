import 'package:ecommerce_app/common/widgets/elevated_button_widget.dart';
import 'package:ecommerce_app/common/widgets/success_screen.dart';
import 'package:ecommerce_app/common/widgets/text_button_widget.dart';
import 'package:ecommerce_app/features/auth/screens/login/login_screen.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreenBodyWidget extends StatelessWidget {
  const VerifyEmailScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Image.asset(
              ImageManager.deliveredEmail,
              width: HelperFunctions.screenWidth() * 0.6,
            ),

            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            // Title & SubTitle
            Text(
              TextManager.confirmEmailTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            Text(
              TextManager.supportEmail,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            Text(
              TextManager.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),

            // Buttons
            ElevatedButtonWidget(
              onPressed: () => Get.to(() => SuccessScreen(
                    image: ImageManager.staticSuccess,
                    title: TextManager.yourAccountCreatedTitle,
                    subTitle: TextManager.yourAccountCreatedSubTitle,
                    onPressed: () => Get.to(
                      () => const LoginScreen(),
                    ),
                  )),
              widget: const Text(TextManager.continueButton),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            TextButtonWidget(
              onPressed: () {},
              text: TextManager.resendEmail,
            ),
          ],
        ),
      ),
    );
  }
}
