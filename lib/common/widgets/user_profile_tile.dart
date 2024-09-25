import 'package:ecommerce_app/common/widgets/circular_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
        width: AppSizes.w_50,
        height: AppSizes.h_50,
        padding: 0,
        image: ImageManager.user,
      ),
      title: Text(
        TextManager.userName,
        style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: ColorManager.white,
            ),
      ),
      subtitle: Text(
        TextManager.supportEmail,
        style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: ColorManager.white,
            ),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Iconsax.edit,
            color: ColorManager.white,
          )),
    );
  }
}
