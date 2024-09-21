import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/opacity_manager.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: ColorManager.darkGrey.withOpacity(OpacityManager.op_0_1),
    blurRadius: AppSizes.bR_50,
    spreadRadius: AppSizes.sR_7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: ColorManager.darkGrey.withOpacity(OpacityManager.op_0_1),
    blurRadius: AppSizes.bR_50,
    spreadRadius: AppSizes.sR_7,
    offset: const Offset(0, 2),
  );
}
