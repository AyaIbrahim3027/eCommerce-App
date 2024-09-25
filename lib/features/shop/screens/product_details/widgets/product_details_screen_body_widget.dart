import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreenBodyWidget extends StatelessWidget {
  const ProductDetailsScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // Product Image Slider
          ProductImageSlider(),

          // Product Detail
          Padding(
            padding: EdgeInsets.only(
              right: AppSizes.defaultSpace,
              left: AppSizes.defaultSpace,
              bottom: AppSizes.defaultSpace,
            ),
            child: Column(
              children: [
                // Rating & Share
                RatingAndShare(),

                // Price , Title , Stock , Brand

                // Attributes

                // Checkout

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

