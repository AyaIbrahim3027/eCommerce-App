import 'package:ecommerce_app/common/widgets/brand_showcase.dart';
import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/product_cards_vertical.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              const BrandShowcase(
                images: [
                  ImageManager.productImage1,
                  ImageManager.productImage2,
                  ImageManager.productImage3,
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // Products
              SectionHeading(
                title: TextManager.youMightLike,
                onPressed: () {},
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardsVertical(
                    image: ImageManager.productImage1,
                    saleNumber: TextManager.sale_25),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
