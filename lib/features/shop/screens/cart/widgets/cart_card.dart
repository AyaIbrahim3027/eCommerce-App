import 'package:ecommerce_app/common/widgets/cart_item.dart';
import 'package:ecommerce_app/common/widgets/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/product_quantity_with_add_remove_button.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CartItem(),
        SizedBox(height: AppSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: AppSizes.w_70),
                // Add Remove Button
                ProductQuantityWithAddRemoveButton(),
              ],
            ),
            ProductPriceText(price: TextManager.price_256),
          ],
        ),
      ],
    );
  }
}
