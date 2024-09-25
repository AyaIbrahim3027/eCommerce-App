import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/opacity_manager.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SaleTag extends StatelessWidget {
  const SaleTag({
    super.key, required this.saleNumber,
  });
  final String saleNumber;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      radius: AppSizes.sm,
      backgroundColor: ColorManager.secondaryColor
          .withOpacity(OpacityManager.op_0_8),
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.sm, vertical: AppSizes.xs),
      widget: Text(
        saleNumber,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
