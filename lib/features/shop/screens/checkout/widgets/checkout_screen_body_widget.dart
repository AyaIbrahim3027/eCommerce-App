import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/features/shop/screens/cart/widgets/cart_screen_body_widget.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
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
            RoundedContainer(
              showBorder: true,
              backgroundColor: dark ? ColorManager.dark : ColorManager.white,
              padding: const EdgeInsets.only(
                top: AppSizes.sm,
                bottom: AppSizes.sm,
                right: AppSizes.sm,
                left: AppSizes.md,
              ),
              widget: Row(
                children: [

                  // TextField
                  Flexible(
                    child: TextFormField(decoration:  const InputDecoration(
                      hintText: TextManager.promoCode,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none
                    ),),
                  )
                ],
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
