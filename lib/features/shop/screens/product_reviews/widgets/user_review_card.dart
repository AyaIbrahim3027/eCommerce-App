import 'package:ecommerce_app/common/widgets/rating_bar_Iindicator_widget.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(ImageManager.user),
                ),
                const SizedBox(width: AppSizes.spaceBtwItems),
                Text(
                  TextManager.myName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),

        const SizedBox(height: AppSizes.spaceBtwItems / 2),

        // Reviews
        Row(
          children: [
            const RatingBarIndicatorWidget(rating: 4),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(height: AppSizes.spaceBtwItems),

        const ReadMoreText(
          TextManager.reviewsTxt,
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: TextManager.showMore,
          trimCollapsedText: TextManager.less,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ColorManager.primaryColor),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ColorManager.primaryColor),
        ),

        const SizedBox(height: AppSizes.spaceBtwItems),

        // Company Review
        RoundedContainer(
          backgroundColor: dark ? ColorManager.darkerGrey : ColorManager.grey,
          widget: Padding(
            padding: const EdgeInsets.all(AppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(TextManager.companyName,
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Nov, 2023',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),

                const SizedBox(height: AppSizes.spaceBtwItems),
                const ReadMoreText(
                  TextManager.reviewsTxt,
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: TextManager.showMore,
                  trimCollapsedText: TextManager.less,
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.primaryColor),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.primaryColor),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: AppSizes.spaceBtwSections),

      ],
    );
  }
}
