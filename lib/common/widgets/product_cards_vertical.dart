import 'package:ecommerce_app/common/styles/shadow_style.dart';
import 'package:ecommerce_app/common/widgets/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/rounded_image_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/opacity_manager.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardsVertical extends StatelessWidget {
  const ProductCardsVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Container(
      width: AppSizes.w_180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? ColorManager.darkerGrey : ColorManager.white,
      ),
      child: Column(
        children: [
          // Thumbnail
          RoundedContainer(
            height: AppSizes.h_180,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? ColorManager.dark : ColorManager.light,
            widget: Stack(
              children: [
                // Image
                const RoundedImageContainer(image: ImageManager.productImage1),

                // Sale Tag
                Positioned(
                  top: 12,
                  child: RoundedContainer(
                    radius: AppSizes.sm,
                    backgroundColor: ColorManager.secondaryColor
                        .withOpacity(OpacityManager.op_0_8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.sm, vertical: AppSizes.xs),
                    widget: Text(
                      TextManager.sale_25,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),

                // Favourite Icon Button
                const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: ColorManager.red,
                    )),
              ],
            ),
          ),

          // Details
        ],
      ),
    );
  }
}
