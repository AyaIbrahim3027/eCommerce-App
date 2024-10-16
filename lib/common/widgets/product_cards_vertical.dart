import 'package:ecommerce_app/common/styles/shadow_style.dart';
import 'package:ecommerce_app/common/widgets/brand_name_with_icon.dart';
import 'package:ecommerce_app/common/widgets/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/rounded_image_container.dart';
import 'package:ecommerce_app/common/widgets/sale_tag.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/product_details_screen.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardsVertical extends StatelessWidget {
  const ProductCardsVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
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
              widget: const Stack(
                children: [
                  // Image
                  RoundedImageContainer(
                    image: ImageManager.productImage1,
                    fit: BoxFit.contain,
                  ),

                  // Sale Tag
                  Positioned(
                      top: 12,
                      child: SaleTag(saleNumber: TextManager.sale_25)),

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

            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),

            // Details
            const Padding(
              padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  ProductTitleText(
                    title: 'Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),

                  // Brand with verify icon
                  BrandNameWithVerifiedIcon(
                    brandName: "Nike",
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: AppSizes.sm),
                  child: ProductPriceText(
                    price: '35.5',
                  ),
                ),

                // Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: ColorManager.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.cardRadiusMd),
                      bottomRight: Radius.circular(AppSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: AppSizes.iconLg * 1.2,
                    height: AppSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
