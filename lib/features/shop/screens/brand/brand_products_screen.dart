import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/features/shop/screens/brand/widgets/brand_products_screen_body_widget.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            TextManager.brandName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: const BrandProductsScreenBodyWidget(),
      ),
    );
  }
}
