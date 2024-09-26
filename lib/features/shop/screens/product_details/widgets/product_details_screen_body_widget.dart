import 'package:ecommerce_app/common/widgets/elevated_button_widget.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

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

                // Desc

                // Reviews
              ],
            ),
          ),
        ],
      ),
    );
  }
}
