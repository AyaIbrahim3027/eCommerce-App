import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/common/widgets/cart_counter_icon.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/store_screen_body_widget.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          // Appbar
          appBar: CustomAppBar(
            title: Text(
              TextManager.store,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              CartCounterIcon(
                iconColor: dark ? ColorManager.light : ColorManager.dark,
                onPressed: () {},
              ),
            ],
          ),
          body: const StoreScreenBodyWidget(),
        ),
      ),
    );
  }
}
