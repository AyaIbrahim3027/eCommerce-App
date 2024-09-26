import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppChipTheme {
  AppChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ColorManager.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: ColorManager.black),
    selectedColor: ColorManager.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: ColorManager.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ColorManager.darkerGrey,
    labelStyle: TextStyle(color: ColorManager.white),
    selectedColor: ColorManager.primaryColor,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: ColorManager.white,
  );
}
