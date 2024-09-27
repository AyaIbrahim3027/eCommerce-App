import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/features/shop/screens/cart/widgets/cart_screen_body_widget.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          showBackArrow: true,
          title: Text(
            TextManager.cart,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: const CartScreenBodyWidget(),
      ),
    );
  }
}
