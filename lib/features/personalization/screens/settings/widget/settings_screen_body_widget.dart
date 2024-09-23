import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/header_container.dart';
import 'package:ecommerce_app/common/widgets/user_profile_tile.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SettingsScreenBodyWidget extends StatelessWidget {
  const SettingsScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header
          HeaderContainer(
              widget: Column(
            children: [
              // Appbar
              CustomAppBar(
                title: Text(
                  TextManager.account,
                  style: Theme.of(context).textTheme.headlineMedium!.apply(
                        color: ColorManager.white,
                      ),
                ),
              ),

              // User Profile Card
              const UserProfileTile(),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
            ],
          )),
          // Body
        ],
      ),
    );
  }
}

