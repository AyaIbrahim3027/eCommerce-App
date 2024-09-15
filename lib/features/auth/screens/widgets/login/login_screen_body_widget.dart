import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/common/widgets/form_divider.dart';
import 'package:ecommerce_app/common/widgets/social_buttons.dart';
import 'package:ecommerce_app/features/auth/screens/widgets/login/login_screen_form.dart';
import 'package:ecommerce_app/features/auth/screens/widgets/login/login_screen_header.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreenBodyWidget extends StatelessWidget {
  const LoginScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: SpacingStyles.paddingWithAppBarHeight,
        child: Column(
          children: [
            // logo , title , subtitle (Header)
            LoginScreenHeader(),

            // Form
            LoginScreenForm(),

            // divider
            FormDivider(
              dividerText: TextManager.orSignInWith,
            ),
            SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            //Footer
            SocialButtons(),
          ],
        ),
      ),
    );
  }
}
