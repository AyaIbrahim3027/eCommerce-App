import 'package:ecommerce_app/common/functions/brandTopProductImageWidget.dart';
import 'package:ecommerce_app/common/widgets/brand_card.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: ColorManager.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: const EdgeInsets.all(AppSizes.md),
      widget: Column(
        children: [
          // Brand With Products Count
          const BrandCard(showBorder: false),
          const SizedBox(height: AppSizes.spaceBtwItems),

          // Brand Top 3 Product Image
          Row(
            children: images
                .map((image) =>
                    brandTopProductImageWidget(context, image: image))
                .toList(),
          ),
        ],
      ),
    );
  }
}
