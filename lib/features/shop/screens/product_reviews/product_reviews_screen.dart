import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/widgets/product_reviews_body_widget.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
          title: Text(
        TextManager.reviewsAndRatings,
        style: Theme.of(context).textTheme.headlineMedium,
      )),
      body: const ProductReviewsBodyWidget(),
    ));
  }
}
