import 'package:ecommerce_app/common/widgets/brand_showcase.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          // Brands
          BrandShowcase(
            images: [
              ImageManager.productImage1,
              ImageManager.productImage2,
              ImageManager.productImage3,
            ],
          ),
          // Products
        ],
      ),
    );
  }
}
