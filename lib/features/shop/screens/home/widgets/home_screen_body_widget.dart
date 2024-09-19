import 'package:ecommerce_app/common/widgets/custom_shapes/containers/header_container.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // Header
          HeaderContainer(
            widget: Column(
              children: [
                // Appbar
                HomeAppBar(),
                // Search
                // Categories
              ],
            ),
          ),
        ],
      ),
    );
  }
}
