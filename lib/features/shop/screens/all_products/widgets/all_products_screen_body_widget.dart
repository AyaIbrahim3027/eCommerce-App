import 'package:ecommerce_app/common/widgets/sortable_products.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProductsScreenBodyWidget extends StatelessWidget {
  const AllProductsScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: SortableProducts(),
      ),
    );
  }
}

