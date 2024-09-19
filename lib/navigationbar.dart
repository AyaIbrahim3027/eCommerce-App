import 'package:ecommerce_app/common/controller/navigation_controller.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/opacity_manager.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationBarMenu extends StatelessWidget {
  const NavigationBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: AppSizes.h_80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? ColorManager.black : ColorManager.white,
          indicatorColor: dark
              ? ColorManager.white.withOpacity(OpacityManager.op_0_1)
              : ColorManager.black.withOpacity(OpacityManager.op_0_1),
          destinations: const [
            NavigationDestination(
                icon: Icon(Iconsax.home), label: TextManager.home),
            NavigationDestination(
                icon: Icon(Iconsax.shop), label: TextManager.store),
            NavigationDestination(
                icon: Icon(Iconsax.heart), label: TextManager.wishlist),
            NavigationDestination(
                icon: Icon(Iconsax.user), label: TextManager.profile),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}
