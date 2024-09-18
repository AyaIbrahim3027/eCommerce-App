import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/common/widgets/elevated_button_widget.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: SpacingStyles.paddingWithAppBarHeight,
            child: Column(
              children: [
                // Image
                Image.asset(
                  image,
                  width: HelperFunctions.screenWidth() * 0.6,
                ),

                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),

                // Title & SubTitle
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),

                Text(
                 subTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),

                // Buttons
                ElevatedButtonWidget(
                  onPressed: onPressed,
                  widget: const Text(TextManager.continueButton),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
