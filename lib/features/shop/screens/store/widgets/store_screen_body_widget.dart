import 'package:ecommerce_app/common/widgets/brand_name_with_icon.dart';
import 'package:ecommerce_app/common/widgets/circular_image.dart';
import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/search_container.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreenBodyWidget extends StatelessWidget {
  const StoreScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: dark ? ColorManager.dark : ColorManager.light,
              automaticallyImplyLeading: false,
              expandedHeight: AppSizes.h_440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    // Search
                    const SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),
                    const SearchContainer(
                      text: TextManager.search,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwSections,
                    ),

                    // Featured Brands
                    SectionHeading(
                      title: TextManager.featuredBrands,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems / 1.5,
                    ),

                    GridLayout(
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
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container());
  }
}
