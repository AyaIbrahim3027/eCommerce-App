import 'package:ecommerce_app/common/widgets/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SelectedAttributePriceAndDesc extends StatelessWidget {
  const SelectedAttributePriceAndDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return RoundedContainer(
      padding: const EdgeInsets.all(AppSizes.md),
      backgroundColor: dark ? ColorManager.darkerGrey : ColorManager.grey,
      widget: Column(
        children: [
          // Title , Price , Stock Status
          Row(
            children: [
              const SectionHeading(
                title: TextManager.variation,
                showActionButton: false,
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const ProductTitleText(
                        title: TextManager.price,
                        smallSize: true,
                      ),

                      // Actual Price
                      Text(
                        TextManager.price_25,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(width: AppSizes.spaceBtwItems / 1.5),

                      // Sale Price
                      const ProductPriceText(price: TextManager.price_20)
                    ],
                  ),

                  // Stock
                  Row(
                    children: [
                      const ProductTitleText(
                        title: TextManager.stock,
                        smallSize: true,
                      ),
                      Text(TextManager.inStock,
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems / 3),
          // Variation Desc
          const ProductTitleText(
            title: TextManager.variationDesc,
            maxLines: 4,
            smallSize: true,
          ),
        ],
      ),
    );
  }
}
