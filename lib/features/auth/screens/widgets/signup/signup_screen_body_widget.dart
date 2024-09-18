import 'package:ecommerce_app/common/widgets/form_divider.dart';
import 'package:ecommerce_app/common/widgets/social_buttons.dart';
import 'package:ecommerce_app/features/auth/screens/widgets/signup/signup_screen_form.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpScreenBodyWidget extends StatelessWidget {
  const SignUpScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title ,
            Text(
              TextManager.signUpTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            // Form
            const SignUpScreenForm(),

            // divider
            const FormDivider(
              dividerText: TextManager.orSignUpWith,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            //Footer
            const SocialButtons(),
          ],
        ),
      ),
    );
  }
}
