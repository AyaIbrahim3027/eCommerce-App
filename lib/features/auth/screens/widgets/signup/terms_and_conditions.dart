import 'package:ecommerce_app/features/auth/controllers/signup/signup_controller.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    final controller = SignupController.instance;

    return Row(
      children: [
        SizedBox(
          height: AppSizes.h_24,
          width: AppSizes.w_24,
          child: Obx(
            () => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value =
                    !controller.privacyPolicy.value),
          ),
        ),
        const SizedBox(
          width: AppSizes.w_8,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: TextManager.iAgreeTo,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TextManager.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color:
                          dark ? ColorManager.white : ColorManager.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? ColorManager.white : ColorManager.primaryColor,
                    ),
              ),
              TextSpan(
                text: TextManager.and,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TextManager.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color:
                          dark ? ColorManager.white : ColorManager.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? ColorManager.white : ColorManager.primaryColor,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
