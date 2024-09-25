import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges_widget.dart';
import 'package:ecommerce_app/common/widgets/rounded_image_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreenBodyWidget extends StatelessWidget {
  const ProductDetailsScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          // Product Image Slider
          CurvedEdgesWidget(
            widget: Container(
              color: dark ? ColorManager.darkerGrey : ColorManager.light,
              child: Stack(
                children: [
                  // Main image
                  const SizedBox(
                    height: AppSizes.h_400,
                    child: Padding(
                      padding: EdgeInsets.all(AppSizes.productImageRadius * 2),
                      child: Center(
                        child: Image(
                          image: AssetImage(ImageManager.productImage1),
                        ),
                      ),
                    ),
                  ),

                  // Image Slider
                  Positioned(
                    right: 0,
                    bottom: 30,
                    child: SizedBox(
                      height: AppSizes.h_80,
                      child: ListView.separated(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (_, int index) {
                          return RoundedImageContainer(
                              width: AppSizes.w_80,
                              padding: const EdgeInsets.all(AppSizes.sm),
                              border:
                                  Border.all(color: ColorManager.primaryColor),
                              backgroundColor:
                                  dark ? ColorManager.dark : ColorManager.white,
                              image: ImageManager.productImage1);
                        },
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: AppSizes.spaceBtwItems),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Product Details
        ],
      ),
    );
  }
}
