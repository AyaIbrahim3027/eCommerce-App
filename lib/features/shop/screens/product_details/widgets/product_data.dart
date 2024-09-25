import 'package:ecommerce_app/common/widgets/product_title_text.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_price.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price
        const ProductPrice(),
        const SizedBox(height: AppSizes.spaceBtwItems),

        // Title
        const ProductTitleText(title: TextManager.productTitle),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        // Stock
        Row(
          children: [
            const ProductTitleText(title: TextManager.status),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(
              TextManager.inStock,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        // Brand
      ],
    );
  }
}
