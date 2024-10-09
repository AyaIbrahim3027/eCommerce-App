import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/common/widgets/checkout_button.dart';
import 'package:ecommerce_app/common/widgets/success_screen.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/checkout_screen_body_widget.dart';
import 'package:ecommerce_app/navigationbar.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          showBackArrow: true,
          title: Text(
            TextManager.orderReview,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: const CheckoutScreenBodyWidget(),
        bottomNavigationBar: CheckoutButton(
          onPressed: () => Get.to(() => SuccessScreen(
                image: ImageManager.successfulPaymentIcon,
                title: TextManager.paymentSuccess,
                subTitle: TextManager.paymentSuccessSubTitle,
                onPressed: () => Get.offAll(() => const NavigationBarMenu()),
              )),
        ),
      ),
    );
  }
}
