import 'package:ecommerce_app/common/widgets/choice_chip_widget.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/selected_attribute_price_and_desc.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Selected Attribute Price & Desc
        const SelectedAttributePriceAndDesc(),
        const SizedBox(height: AppSizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
                title: TextManager.colors, showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: AppSizes.sm,
              children: [
                ChoiceChipWidget(
                  text: TextManager.green,
                  selected: true,
                  onSelected: (value) {},
                ),
                ChoiceChipWidget(
                  text: TextManager.blue,
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChipWidget(
                  text: TextManager.yellow,
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChipWidget(
                  text: TextManager.green,
                  selected: true,
                  onSelected: (value) {},
                ),
                ChoiceChipWidget(
                  text: TextManager.blue,
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChipWidget(
                  text: TextManager.yellow,
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
                title: TextManager.size, showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: AppSizes.sm,
              children: [
                ChoiceChipWidget(
                  text: TextManager.eu_34,
                  selected: true,
                  onSelected: (value) {},
                ),
                ChoiceChipWidget(
                  text: TextManager.eu_36,
                  selected: false,
                  onSelected: (value) {},
                ),
                ChoiceChipWidget(
                  text: TextManager.eu_38,
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
