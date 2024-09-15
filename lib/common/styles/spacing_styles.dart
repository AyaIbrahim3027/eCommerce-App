import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
  );
}
