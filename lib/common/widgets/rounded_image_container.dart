import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedImageContainer extends StatelessWidget {
  const RoundedImageContainer({
    super.key,
    this.width = AppSizes.w_350,
    this.height,
    required this.image,
    this.applyImageRadius = true,
    this.isNetworkImage = false,
    this.border,
    this.backgroundColor = ColorManager.light,
    this.fit = BoxFit.cover,
    this.padding,
    this.onTap,
    this.borderRadius = AppSizes.cardRadiusLg,
  });

  final double? width, height;
  final String image;
  final bool applyImageRadius, isNetworkImage;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final void Function()? onTap;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
