import 'package:ecommerce_app/common/widgets/coupon_code.dart';
import 'package:ecommerce_app/features/shop/screens/cart/widgets/cart_screen_body_widget.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CheckoutScreenBodyWidget extends StatelessWidget {
  const CheckoutScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Items in cart
            CartScreenBodyWidget(showAddRemoveButtons: false),
            SizedBox(height: AppSizes.spaceBtwSections),

            // Coupon TextField
            CouponCode(),
            SizedBox(height: AppSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}

