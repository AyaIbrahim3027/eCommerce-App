import 'package:ecommerce_app/common/widgets/brand_card.dart';
import 'package:ecommerce_app/common/widgets/sortable_products.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProductsScreenBodyWidget extends StatelessWidget {
  const BrandProductsScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Brand Detail
            BrandCard(showBorder: true),
            SizedBox(height: AppSizes.spaceBtwSections),

            SortableProducts(),
          ],
        ),
      ),
    );
  }
}
