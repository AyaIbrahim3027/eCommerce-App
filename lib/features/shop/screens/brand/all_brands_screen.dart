import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/features/shop/screens/brand/widgets/all_brands_screen_body_widget.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(TextManager.brand),
          showBackArrow: true,
        ),
        body: AllBrandsScreenBodyWidget(),
      ),
    );
  }
}
