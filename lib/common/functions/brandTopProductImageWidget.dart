import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

Widget brandTopProductImageWidget(context, {required String image}) {
  final dark = HelperFunctions.isDarkMode(context);
  return Expanded(
    child: RoundedContainer(
      height: AppSizes.h_100,
      backgroundColor: dark ? ColorManager.darkerGrey : ColorManager.light,
      margin: const EdgeInsets.only(right: AppSizes.sm),
      padding: const EdgeInsets.all(AppSizes.md),
      widget: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ),
  );
}
