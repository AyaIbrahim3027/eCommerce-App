import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? ColorManager.dark : ColorManager.light,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: ColorManager.primaryColor,
        labelColor: dark ? ColorManager.white : ColorManager.primaryColor,
        unselectedLabelColor: ColorManager.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
