import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProductsScreenBodyWidget extends StatelessWidget {
  const AllProductsScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // Dropdown
            DropdownButtonFormField(
              decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
              onChanged: (value) {},
              items: [
                TextManager.name,
                TextManager.higherPrice,
                TextManager.lowerPrice,
                TextManager.sale,
                TextManager.newest,
                TextManager.popularity
              ].map((option) => DropdownMenuItem(
                  value: option,
                  child: Text(option))).toList(),
            ),
            SizedBox(height: AppSizes.spaceBtwSections),
            
          ],
        ),
      ),
    );
  }
}
