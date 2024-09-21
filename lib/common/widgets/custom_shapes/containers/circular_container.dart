import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = AppSizes.w_400,
    this.height = AppSizes.h_400,
    this.radius = AppSizes.w_400,
    this.widget,
    this.color = ColorManager.white,
    this.padding = 0,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? widget;
  final Color color;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: widget,
    );
  }
}
