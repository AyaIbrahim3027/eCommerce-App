import 'package:ecommerce_app/common/widgets/circular_image.dart';
import 'package:ecommerce_app/common/widgets/text_button_widget.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Img
        const CircularImage(
          width: AppSizes.w_80,
          height: AppSizes.h_80,
          padding: 0,
          image: ImageManager.user,
        ),
        // Change Pic Button
        TextButtonWidget(
          onPressed: () {},
          text: TextManager.changePic,
        ),
      ],
    );
  }
}
