import 'package:ecommerce_app/common/widgets/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/sale_tag.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Sale Tag
        const SaleTag(saleNumber: TextManager.sale_25),
        const SizedBox(width: AppSizes.spaceBtwItems),

        // Price
        Text(
          TextManager.price_250,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .apply(decoration: TextDecoration.lineThrough),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        const ProductPriceText(price: TextManager.price_175 , isLarge: true,),
      ],
    );
  }
}
