import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Column(
      children: [
        SectionHeading(
          title: TextManager.paymentMethod,
          buttonText: TextManager.change,
          onPressed: () {},
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        Row(
          children: [
            RoundedContainer(
              width: AppSizes.w_60,
              height: AppSizes.h_40,
              backgroundColor: dark ? ColorManager.light : ColorManager.white,
              padding: const EdgeInsets.all(AppSizes.sm),
              widget: const Image(
                image: AssetImage(ImageManager.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems / 2),
            Text(
              TextManager.payPal,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
