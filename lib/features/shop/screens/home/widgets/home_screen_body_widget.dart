import 'package:ecommerce_app/common/widgets/custom_shapes/containers/header_container.dart';
import 'package:ecommerce_app/common/widgets/search_container.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          HeaderContainer(
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
                Padding(
                  padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Heading
                      SectionHeading(
                        title: TextManager.popularCategories,
                        textColor: ColorManager.white,
                        showActionButton: false,
                      ),
                      SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),

                      // Categories

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

