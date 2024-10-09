import 'package:ecommerce_app/common/widgets/coupon_code.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/features/shop/screens/cart/widgets/cart_screen_body_widget.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CheckoutScreenBodyWidget extends StatelessWidget {
  const CheckoutScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Items in cart
            const CartScreenBodyWidget(showAddRemoveButtons: false),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Coupon TextField
            const CouponCode(),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Billing Section
            RoundedContainer(
              showBorder: true,
              backgroundColor: dark ? ColorManager.black : ColorManager.white,
             padding: const EdgeInsets.all(AppSizes.md),
              widget: const Column(
                children: [
                  // price
                  BillingPaymentSection(),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  // divider
                  Divider(),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  // payment methods
                  // address
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
