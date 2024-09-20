import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ImageCircularContainer extends StatelessWidget {
  const ImageCircularContainer({
    super.key,
    this.backgroundColor,
    required this.image,
  });

  final Color? backgroundColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Container(
      width: AppSizes.w_56,
      height: AppSizes.h_56,
      padding: const EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
        color:
            backgroundColor ?? (dark ? ColorManager.black : ColorManager.white),
        borderRadius: BorderRadius.circular(AppSizes.r_100),
      ),
      child: Center(
        child: Image.asset(image),
      ),
    );
  }
}
