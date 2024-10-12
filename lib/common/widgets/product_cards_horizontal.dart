import 'package:ecommerce_app/common/styles/shadow_style.dart';
import 'package:ecommerce_app/common/widgets/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/rounded_image_container.dart';
import 'package:ecommerce_app/common/widgets/sale_tag.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardsHorizontal extends StatelessWidget {
  const ProductCardsHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Container(
      width: AppSizes.w_310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? ColorManager.darkerGrey : ColorManager.white,
      ),
      child: Row(
        children: [
          // Thumbnail
          RoundedContainer(
            height: AppSizes.h_120,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? ColorManager.dark : ColorManager.light,
            widget: const Stack(
              children: [
                // Thumbnail Image
                SizedBox(
                  height: AppSizes.h_120,
                  width: AppSizes.w_120,
                  child: RoundedImageContainer(
                    image: ImageManager.productImage1,
                    fit: BoxFit.contain,
                  ),
                ),

                // Sale Tag
                Positioned(
                  top: 12,
                  child: SaleTag(saleNumber: TextManager.sale_25),
                ),

                // Favourite Icon Button
                Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: ColorManager.red,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
