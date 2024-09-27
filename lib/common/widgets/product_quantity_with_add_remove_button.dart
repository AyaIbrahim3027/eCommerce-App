import 'package:ecommerce_app/common/widgets/circular_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          width: AppSizes.w_32,
          height: AppSizes.h_32,
          size: AppSizes.md,
          icon: Iconsax.minus,
          color: dark ? ColorManager.white : ColorManager.black,
          backgroundColor: dark ? ColorManager.darkerGrey : ColorManager.light,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: AppSizes.spaceBtwItems),
        const CircularIcon(
          width: AppSizes.w_32,
          height: AppSizes.h_32,
          size: AppSizes.md,
          icon: Iconsax.add,
          color: ColorManager.white,
          backgroundColor: ColorManager.primaryColor,
        ),
      ],
    );
  }
}
