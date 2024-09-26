import 'package:ecommerce_app/common/widgets/rating_bar_Iindicator_widget.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/widgets/overall_product_ratings.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ProductReviewsBodyWidget extends StatelessWidget {
  const ProductReviewsBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(TextManager.reviewsAndRatingsTxt),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // Overall Product Ratings
            const OverallProductRatings(),
            const RatingBarIndicatorWidget(rating: 3.5,),
            Text('12,611', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // User Reviews List
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
