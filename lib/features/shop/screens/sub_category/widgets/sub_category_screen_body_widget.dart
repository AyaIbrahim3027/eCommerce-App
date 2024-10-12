import 'package:ecommerce_app/common/widgets/product_cards_horizontal.dart';
import 'package:ecommerce_app/common/widgets/rounded_image_container.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SubCategoryScreenBodyWidget extends StatelessWidget {
  const SubCategoryScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Banner
            const RoundedImageContainer(
              width: double.infinity,
              image: ImageManager.promoBanner4,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Sub Categories
            Column(
              children: [
                // Heading
                SectionHeading(
                  title: TextManager.subCategoryTitle,
                  onPressed: () {},
                ),
                const SizedBox(height: AppSizes.spaceBtwItems / 2),

                SizedBox(
                  height: AppSizes.h_120,
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        const ProductCardsHorizontal(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: AppSizes.spaceBtwItems),
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
