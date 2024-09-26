import 'package:ecommerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OverallProductRatings extends StatelessWidget {
  const OverallProductRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(TextManager.rate_4_8,
              style: Theme.of(context).textTheme.displayLarge),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(
                  text: TextManager.rate_5, value: AppSizes.lPIV_1),
              RatingProgressIndicator(
                  text: TextManager.rate_4, value: AppSizes.lPIV_0_8),
              RatingProgressIndicator(
                  text: TextManager.rate_3, value: AppSizes.lPIV_0_6),
              RatingProgressIndicator(
                  text: TextManager.rate_2, value: AppSizes.lPIV_0_4),
              RatingProgressIndicator(
                  text: TextManager.rate_1, value: AppSizes.lPIV_0_2),
            ],
          ),
        ),
      ],
    );
  }
}
