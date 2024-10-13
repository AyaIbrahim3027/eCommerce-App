import 'package:ecommerce_app/common/widgets/brand_card.dart';
import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/common/widgets/sortable_products.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreenBodyWidget extends StatelessWidget {
  const AllBrandsScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Heading
            const SectionHeading(
              title: TextManager.brands,
              showActionButton: false,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // Brands
            GridLayout(
              itemCount: 10,
              mainAxisExtent: AppSizes.h_80,
              itemBuilder: (context, index) => BrandCard(
                showBorder: true,
                onTap: () => Get.to(() => const SortableProducts()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
