import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: ColorManager.rating,
              size: AppSizes.s_24,
            ),
            const SizedBox(
              width: AppSizes.sm,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: TextManager.rate_0_5,
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: TextManager.rateNo_0_5),
                ],
              ),
            ),
          ],
        ),

        // Share
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            size: AppSizes.iconMd,
          ),
        )
      ],
    );
  }
}
