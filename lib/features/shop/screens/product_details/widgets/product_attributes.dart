import 'package:ecommerce_app/features/shop/screens/product_details/widgets/selected_attribute_price_and_desc.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return const Column(
      children: [
        // Selected Attribute Price & Desc
        SelectedAttributePriceAndDesc(),
        SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
      ],
    );
  }
}
