import 'package:ecommerce_app/common/widgets/elevated_button_widget.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreenBodyWidget extends StatelessWidget {
  const ProductDetailsScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Product Image Slider
          const ProductImageSlider(),

          // Product Detail
          Padding(
            padding: const EdgeInsets.only(
              right: AppSizes.defaultSpace,
              left: AppSizes.defaultSpace,
              bottom: AppSizes.defaultSpace,
            ),
            child: Column(
              children: [
                // Rating & Share
                const RatingAndShare(),

                // Price , Title , Stock , Brand
                const ProductData(),

                // Attributes
                const ProductAttributes(),

                const SizedBox(height: AppSizes.spaceBtwSections),

                // Checkout
                ElevatedButtonWidget(
                    onPressed: () {}, widget: const Text(TextManager.checkout)),

                const SizedBox(height: AppSizes.spaceBtwSections),

                // Desc
                const SectionHeading(
                  title: TextManager.description,
                  showActionButton: false,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const ReadMoreText(
                  TextManager.descriptionTxt,
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: TextManager.showMore,
                  trimExpandedText: TextManager.less,
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                // Reviews
                const Divider(),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SectionHeading(
                        title: TextManager.reviews, showActionButton: false),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.arrow_right_3))
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
