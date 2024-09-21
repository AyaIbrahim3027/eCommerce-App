import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandNameWithIcon extends StatelessWidget {
  const BrandNameWithIcon({
    super.key,
    required this.brandName,
    required this.icon,
  });

  final String brandName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          brandName,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          width: AppSizes.xs,
        ),
        Icon(
          icon,
          color: ColorManager.primaryColor,
          size: AppSizes.iconXs,
        ),
      ],
    );
  }
}
