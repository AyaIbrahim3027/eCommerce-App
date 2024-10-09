import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          TextManager.orderReview,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    ),);
  }
}
