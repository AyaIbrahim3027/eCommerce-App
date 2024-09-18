import 'package:ecommerce_app/common/widgets/elevated_button_widget.dart';
import 'package:ecommerce_app/common/widgets/text_button_widget.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreenBodyWidget extends StatelessWidget {
  const ResetPasswordScreenBodyWidget({super.key});

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
              TextManager.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            Text(
              TextManager.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),

            // Buttons
            ElevatedButtonWidget(
              onPressed: () {},
              widget: const Text(TextManager.done),
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
