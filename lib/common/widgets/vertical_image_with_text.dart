import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class VerticalImageWithText extends StatelessWidget {
  const VerticalImageWithText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = ColorManager.white,
    this.backgroundColor = ColorManager.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              width: AppSizes.w_56,
              height: AppSizes.h_56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (dark ? ColorManager.black : ColorManager.white),
                borderRadius: BorderRadius.circular(AppSizes.r_100),
              ),
              child: Center(
                child: Image.asset(image),
              ),
            ),

            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            // Text
            SizedBox(
              width: AppSizes.w_56,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
