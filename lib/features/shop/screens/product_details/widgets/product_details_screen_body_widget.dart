import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
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

          // Product Details
        ],
      ),
    );
  }
}
