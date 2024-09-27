import 'package:ecommerce_app/common/widgets/brand_name_with_icon.dart';
import 'package:ecommerce_app/common/widgets/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/rounded_image_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Row(
      children: [
        // Img
        RoundedImageContainer(
          width: AppSizes.w_60,
          height: AppSizes.h_60,
          padding: const EdgeInsets.all(AppSizes.sm),
          image: ImageManager.productImage1,
          backgroundColor: dark ? ColorManager.darkerGrey : ColorManager.light,
        ),

        const SizedBox(height: AppSizes.spaceBtwItems),

        // Title , Price , Size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const BrandNameWithVerifiedIcon(brandName: TextManager.brandName),
              const Flexible(
                child: ProductTitleText(
                    title: TextManager.productTitleTxt, maxLines: 1),
              ),

              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: TextManager.color,
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: TextManager.green,
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: TextManager.size,
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: TextManager.uk_08,
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
