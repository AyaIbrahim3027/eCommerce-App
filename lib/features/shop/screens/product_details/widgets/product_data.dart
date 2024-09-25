import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_price.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price
        ProductPrice(),
        SizedBox(width: AppSizes.spaceBtwItems),

        // Title

        // Stock

        // Brand
      ],
    );
  }
}

