import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              TextManager.subTotal,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              TextManager.price_250,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: AppSizes.sm),

        // Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              TextManager.shippingFee,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              TextManager.shippingFeePrice,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),

        const SizedBox(height: AppSizes.sm),

        // Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              TextManager.taxFee,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              TextManager.taxFeePrice,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),

        const SizedBox(height: AppSizes.sm),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              TextManager.orderTotal,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              TextManager.orderTotalPrice,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}
