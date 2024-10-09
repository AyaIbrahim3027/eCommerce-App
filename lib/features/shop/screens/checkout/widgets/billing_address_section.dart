import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: TextManager.shippingAddress,
          buttonText: TextManager.change,
          onPressed: () {},
        ),
        Text(
          TextManager.myName,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: ColorManager.darkGrey,
              size: AppSizes.s_16,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              TextManager.myPhoneNo,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(width: AppSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: ColorManager.darkGrey,
              size: AppSizes.s_16,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              TextManager.address,
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}
