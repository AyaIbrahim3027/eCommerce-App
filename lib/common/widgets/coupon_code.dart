import 'package:ecommerce_app/common/widgets/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/opacity_manager.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? ColorManager.dark : ColorManager.white,
      padding: const EdgeInsets.only(
        top: AppSizes.sm,
        bottom: AppSizes.sm,
        right: AppSizes.sm,
        left: AppSizes.md,
      ),
      widget: Row(
        children: [
          // TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: TextManager.promoCode,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),

          // Button
          SizedBox(
            width: AppSizes.w_80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? ColorManager.white.withOpacity(OpacityManager.op_0_5)
                    : ColorManager.dark.withOpacity(OpacityManager.op_0_5),
                backgroundColor:
                    ColorManager.darkGrey.withOpacity(OpacityManager.op_0_2),
                side: BorderSide(
                  color: ColorManager.grey.withOpacity(OpacityManager.op_0_1),
                ),
              ),
              child: const Text(TextManager.apply),
            ),
          )
        ],
      ),
    );
  }
}
