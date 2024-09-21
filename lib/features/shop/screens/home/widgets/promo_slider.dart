import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/widgets/rounded_image_container.dart';
import 'package:ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((image) => RoundedImageContainer(image: image))
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.carousalCurrentIndex(index),
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularContainer(
                  width: 20,
                  height: 6,
                  color: controller.carousalCurrentIndex.value == i
                      ? ColorManager.primaryColor
                      : ColorManager.grey,
                  margin: const EdgeInsets.only(right: 10),
                )
            ],
          ),
        ),
      ],
    );
  }
}
