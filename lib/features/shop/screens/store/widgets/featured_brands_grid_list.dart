import 'package:ecommerce_app/common/widgets/brand_card.dart';
import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FeaturedBrandsGridList extends StatelessWidget {
  const FeaturedBrandsGridList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridLayout(
      itemCount: 4,
      mainAxisExtent: AppSizes.h_80,
      itemBuilder: (_, index) {
        return const BrandCard(
          showBorder: true,
        );
      },
    );
  }
}
