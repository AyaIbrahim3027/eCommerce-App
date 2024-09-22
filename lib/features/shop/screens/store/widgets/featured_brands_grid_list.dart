import 'package:ecommerce_app/common/widgets/brand_name_with_icon.dart';
import 'package:ecommerce_app/common/widgets/circular_image.dart';
import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class FeaturedBrandsGridList extends StatelessWidget {
  const FeaturedBrandsGridList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridLayout(
      itemCount: 4,
      mainAxisExtent: AppSizes.h_80,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {},
          child: RoundedContainer(
            padding: const EdgeInsets.all(AppSizes.sm),
            showBorder: true,
            backgroundColor: Colors.transparent,
            widget: Row(
              children: [
                // Icons
                const Flexible(
                  child: CircularImage(
                    image: ImageManager.clothIcon,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(
                  width: AppSizes.sm,
                ),

                // Text
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Brand with verify icon
                      const BrandNameWithVerifiedIcon(
                        brandName: TextManager.brandName,
                        brandTextSize: TextSizes.large,
                      ),
                      const SizedBox(
                        height: AppSizes.xs / 2,
                      ),
                      Text(
                        TextManager.numberOfProducts,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
