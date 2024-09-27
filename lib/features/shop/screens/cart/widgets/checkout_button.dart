import 'package:ecommerce_app/common/widgets/elevated_button_widget.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSizes.defaultSpace,
          right: AppSizes.defaultSpace,
          bottom: AppSizes.defaultSpace),
      child: ElevatedButtonWidget(
        onPressed: () {},
        widget: const Text('${TextManager.checkout} ${TextManager.price_256}'),
      ),
    );
  }
}
