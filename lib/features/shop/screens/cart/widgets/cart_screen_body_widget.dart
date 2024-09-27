import 'package:ecommerce_app/common/widgets/rounded_image_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartScreenBodyWidget extends StatelessWidget {
  const CartScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          itemCount: 4,
          itemBuilder: (_, index) => Column(
            children: [
              Row(
                children: [
                  // Img
                  RoundedImageContainer(
                      width: AppSizes.w_60,
                      height: AppSizes.h_60,
                      padding: EdgeInsets.all(AppSizes.sm),
                      image: ImageManager.productImage1,
                    backgroundColor: dark ? ColorManager.darkerGrey : ColorManager.light,
                  ),

                  SizedBox(height: AppSizes.spaceBtwItems),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
