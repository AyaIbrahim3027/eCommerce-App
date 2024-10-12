import 'package:ecommerce_app/common/widgets/rounded_image_container.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoryScreenBodyWidget extends StatelessWidget {
  const SubCategoryScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Banner
            RoundedImageContainer(
              width: double.infinity,
              image: ImageManager.promoBanner4,
            ),
            SizedBox(height: AppSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
