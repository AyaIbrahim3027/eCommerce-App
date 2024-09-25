import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges_widget.dart';
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
              child: const Stack(
                children: [
                  // Main image
                  SizedBox(
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
