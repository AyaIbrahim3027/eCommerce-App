import 'package:ecommerce_app/common/widgets/circular_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? ColorManager.darkerGrey : ColorManager.light,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(AppSizes.cardRadiusLg),
          topLeft: Radius.circular(AppSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircularIcon(
                width: AppSizes.w_40,
                height: AppSizes.h_40,
                icon: Iconsax.minus,
                backgroundColor: ColorManager.darkGrey,
                color: ColorManager.white,
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: AppSizes.spaceBtwItems),
              const CircularIcon(
                width: AppSizes.w_40,
                height: AppSizes.h_40,
                icon: Iconsax.add,
                backgroundColor: ColorManager.black,
                color: ColorManager.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(AppSizes.md),
                backgroundColor: ColorManager.black,
                side: const BorderSide(color: ColorManager.black),
              ),
              child: const Text(TextManager.addToCart)),
        ],
      ),
    );
  }
}
