import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories_list.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Column(
        children: [
          // Heading
          SectionHeading(
            title: TextManager.popularCategories,
            textColor: ColorManager.white,
            showActionButton: false,
          ),
          SizedBox(
            height: AppSizes.spaceBtwItems,
          ),

          // Categories
          HomeCategoriesList(),
        ],
      ),
    );
  }
}
