import 'package:ecommerce_app/common/widgets/vertical_image_with_text.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h_100,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageWithText(
            image: ImageManager.sportIcon,
            title: 'Sport',
            onTap: () {},
          );
        },
      ),
    );
  }
}
