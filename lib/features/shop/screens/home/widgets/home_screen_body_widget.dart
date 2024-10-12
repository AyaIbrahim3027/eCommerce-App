import 'package:ecommerce_app/common/widgets/custom_shapes/containers/header_container.dart';
import 'package:ecommerce_app/common/widgets/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/product_cards_vertical.dart';
import 'package:ecommerce_app/common/widgets/search_container.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/all_products/all_products_screen.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories_section.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          const HeaderContainer(
            widget: Column(
              children: [
                // Appbar
                HomeAppBar(),
                SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),

                // Search
                SearchContainer(
                  text: TextManager.search,
                ),
                SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),

                // Categories
                HomeCategoriesSection(),
              ],
            ),
          ),

          // Body
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                // Promo Slider
                const PromoSlider(
                  banners: [
                    ImageManager.promoBanner1,
                    ImageManager.promoBanner2,
                    ImageManager.promoBanner3,
                    ImageManager.promoBanner4,
                  ],
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),

                // Heading
                SectionHeading(
                  title: TextManager.popularProducts,
                  onPressed: () => Get.to(() => const AllProductsScreen()),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),

                // Popular Products
                GridLayout(
                  itemCount: 2,
                  itemBuilder: (_, index) => const ProductCardsVertical(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
