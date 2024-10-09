import 'package:ecommerce_app/features/shop/screens/cart/widgets/cart_card.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreenBodyWidget extends StatelessWidget {
  const CartScreenBodyWidget({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
        itemCount: 3,
        itemBuilder: (_, index) => CartCardItems(
          showAddRemoveButtons: showAddRemoveButtons,
        ),
      ),
    );
  }
}
