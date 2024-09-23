import 'package:ecommerce_app/common/widgets/brand_card.dart';
import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/search_container.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/common/widgets/tabbar.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/featured_brands_grid_list.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
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
            expandedHeight: AppSizes.h_430,
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
                  // Heading
                  SectionHeading(
                    title: TextManager.featuredBrands,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems / 1.5,
                  ),

                  // Featured Brands List
                  const FeaturedBrandsGridList(),
                ],
              ),
            ),

            // Tabs
            bottom: const CustomTabBar(
              tabs: [
                Tab(child: Text(TextManager.sports)),
                Tab(child: Text(TextManager.furniture)),
                Tab(child: Text(TextManager.electronics)),
                Tab(child: Text(TextManager.clothes)),
                Tab(child: Text(TextManager.cosmetics)),
              ],
            ),
          ),
        ];
      },

      // Body
      body: TabBarView(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                // Brands
                BrandShowcase(),
                // Products
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.image,
  });

  final List<String> image;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return RoundedContainer(
      showBorder: true,
      borderColor: ColorManager.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      padding: const EdgeInsets.all(AppSizes.md),
      widget: Column(
        children: [
          // Brand With Products Count
          const BrandCard(showBorder: false),

          // Brand Top 3 Product Image
          Row(
            children: [
              Expanded(
                child: RoundedContainer(
                  height: AppSizes.h_100,
                  backgroundColor:
                      dark ? ColorManager.darkerGrey : ColorManager.light,
                  margin: const EdgeInsets.only(right: AppSizes.sm),
                  padding: const EdgeInsets.all(AppSizes.md),
                  widget: const Image(
                    image: AssetImage(ImageManager.productImage1),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: RoundedContainer(
                  height: AppSizes.h_100,
                  backgroundColor:
                      dark ? ColorManager.darkerGrey : ColorManager.light,
                  margin: const EdgeInsets.only(right: AppSizes.sm),
                  padding: const EdgeInsets.all(AppSizes.md),
                  widget: const Image(
                    image: AssetImage(ImageManager.productImage1),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: RoundedContainer(
                  height: AppSizes.h_100,
                  backgroundColor:
                      dark ? ColorManager.darkerGrey : ColorManager.light,
                  margin: const EdgeInsets.only(right: AppSizes.sm),
                  padding: const EdgeInsets.all(AppSizes.md),
                  widget: const Image(
                    image: AssetImage(ImageManager.productImage1),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(context, {required String image}) {
    final dark = HelperFunctions.isDarkMode(context);
    return Expanded(
      child: RoundedContainer(
        height: AppSizes.h_100,
        backgroundColor: dark ? ColorManager.darkerGrey : ColorManager.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: const EdgeInsets.all(AppSizes.md),
        widget: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
