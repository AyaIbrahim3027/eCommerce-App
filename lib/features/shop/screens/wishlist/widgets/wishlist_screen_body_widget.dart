import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/product_cards_vertical.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class WishlistScreenBodyWidget extends StatelessWidget {
  const WishlistScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            GridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => const ProductCardsVertical(),
            ),
          ],
        ),
      ),
    );
  }
}
