import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class AllBrandsScreenBodyWidget extends StatelessWidget {
  const AllBrandsScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Heading
            SectionHeading(
              title: TextManager.brands,
              showActionButton: false,
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
