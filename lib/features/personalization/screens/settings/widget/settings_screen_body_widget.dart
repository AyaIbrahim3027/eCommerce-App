import 'package:ecommerce_app/common/widgets/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/header_container.dart';
import 'package:ecommerce_app/common/widgets/section_heading.dart';
import 'package:ecommerce_app/common/widgets/settings_menu_tile.dart';
import 'package:ecommerce_app/common/widgets/user_profile_tile.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/profile_screen.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

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
               UserProfileTile(onPressed:()=>Get.to(()=> const ProfileScreen())),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
            ],
          )),

          // Body
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                // Account Settings
                const SectionHeading(
                  title: TextManager.accountSettings,
                  showActionButton: false,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),

                SettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: TextManager.accountSettingsTitle1,
                  subTitle: TextManager.accountSettingsSubTitle1,
                  onTap: () {},
                ),
                SettingsMenuTile(
                  icon: Iconsax.shopping_cart,
                  title: TextManager.accountSettingsTitle2,
                  subTitle: TextManager.accountSettingsSubTitle2,
                  onTap: () {},
                ),
                SettingsMenuTile(
                  icon: Iconsax.bag_tick,
                  title: TextManager.accountSettingsTitle3,
                  subTitle: TextManager.accountSettingsSubTitle3,
                  onTap: () {},
                ),
                SettingsMenuTile(
                  icon: Iconsax.bank,
                  title: TextManager.accountSettingsTitle4,
                  subTitle: TextManager.accountSettingsSubTitle4,
                  onTap: () {},
                ),
                SettingsMenuTile(
                  icon: Iconsax.discount_shape,
                  title: TextManager.accountSettingsTitle5,
                  subTitle: TextManager.accountSettingsSubTitle5,
                  onTap: () {},
                ),
                SettingsMenuTile(
                  icon: Iconsax.notification,
                  title: TextManager.accountSettingsTitle6,
                  subTitle: TextManager.accountSettingsSubTitle6,
                  onTap: () {},
                ),
                SettingsMenuTile(
                  icon: Iconsax.security_card,
                  title: TextManager.accountSettingsTitle7,
                  subTitle: TextManager.accountSettingsSubTitle7,
                  onTap: () {},
                ),

                // App Settings
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                const SectionHeading(
                  title: TextManager.appSettings,
                  showActionButton: false,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                SettingsMenuTile(
                  icon: Iconsax.document_upload,
                  title: TextManager.appSettingsTitle1,
                  subTitle: TextManager.appSettingsSubTitle1,
                  onTap: () {},
                ),
                SettingsMenuTile(
                  icon: Iconsax.location,
                  title: TextManager.appSettingsTitle2,
                  subTitle: TextManager.appSettingsSubTitle2,
                  trailing: Switch(
                    activeColor: ColorManager.primaryColor,
                    inactiveTrackColor: ColorManager.lightGrey,
                    inactiveThumbColor: ColorManager.darkerGrey,
                    value: true,
                    onChanged: (value) {},
                  ),
                ),

                SettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: TextManager.appSettingsTitle3,
                  subTitle: TextManager.appSettingsSubTitle3,
                  trailing: Switch(
                    value: false,
                    activeColor: ColorManager.primaryColor,
                    inactiveTrackColor: ColorManager.lightGrey,
                    inactiveThumbColor: ColorManager.darkerGrey,
                    onChanged: (value) {},
                  ),
                ),
                SettingsMenuTile(
                  icon: Iconsax.image,
                  title: TextManager.appSettingsTitle4,
                  subTitle: TextManager.appSettingsSubTitle4,
                  trailing: Switch(
                    activeColor: ColorManager.primaryColor,
                    inactiveTrackColor: ColorManager.lightGrey,
                    inactiveThumbColor: ColorManager.darkerGrey,
                    value: false,
                    onChanged: (value) {},
                  ),
                ),

                // Logout Button
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(TextManager.logout),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
