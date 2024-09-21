import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width,
    this.height,
    this.widget,
    this.radius = AppSizes.cardRadiusLg,
    this.showBorder = false,
    this.borderColor = ColorManager.borderPrimary,
    this.backgroundColor = ColorManager.white,
    this.padding,
    this.margin,
  });

  final double? width, height;
  final Widget? widget;
  final double radius;
  final bool showBorder;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: widget,
    );
  }
}
