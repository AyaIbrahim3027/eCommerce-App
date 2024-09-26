import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class RatingBarIndicatorWidget extends StatelessWidget {
  const RatingBarIndicatorWidget({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: AppSizes.s_20,
      unratedColor: ColorManager.grey,
      itemBuilder: (_, __) => const Icon(
        Iconsax.star1,
        color: ColorManager.primaryColor,
      ),
    );
  }
}
