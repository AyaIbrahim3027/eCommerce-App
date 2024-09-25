import 'package:ecommerce_app/common/widgets/sale_tag.dart';
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
        Row(
          children: [
            // Sale Tag
            SaleTag(saleNumber: TextManager.sale_25),
            SizedBox(width: AppSizes.spaceBtwItems),

            // Price
          ],
        ),

        // Title

        // Stock

        // Brand
      ],
    );
  }
}
