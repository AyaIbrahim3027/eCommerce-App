import 'package:ecommerce_app/common/widgets/image_circular_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class VerticalImageWithText extends StatelessWidget {
  const VerticalImageWithText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = ColorManager.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            ImageCircularContainer(
                backgroundColor: backgroundColor, image: image),

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
