import 'package:ecommerce_app/common/widgets/search_container.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/common/widgets/tabbar.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/featured_brands_grid_list.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
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
      body: const TabBarView(
        children: [
          CategoryTab(),
          CategoryTab(),
          CategoryTab(),
          CategoryTab(),
          CategoryTab(),
        ],
      ),
    );
  }
}
