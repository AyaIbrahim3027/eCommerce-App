import 'package:ecommerce_app/common/widgets/cart_item.dart';
import 'package:ecommerce_app/common/widgets/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/product_quantity_with_add_remove_button.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CartCardItems extends StatelessWidget {
  const CartCardItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CartItem(),
        if (showAddRemoveButtons)
          const SizedBox(height: AppSizes.spaceBtwItems),
        if (showAddRemoveButtons)
          const Row(
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
