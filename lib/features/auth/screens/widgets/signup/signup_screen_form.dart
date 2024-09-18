import 'package:ecommerce_app/features/auth/screens/widgets/signup/terms_and_conditions.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreenForm extends StatelessWidget {
  const SignUpScreenForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
      child: Column(
        children: [
          // First & Last name
          Row(
            children: [
              // First name
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TextManager.firstName,
                  ),
                ),
              ),
              const SizedBox(
                width: AppSizes.spaceBtwInputFields,
              ),
              // Last name
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TextManager.lastName,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          // Username
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: TextManager.username,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          // Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TextManager.email,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          // Phone number
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TextManager.phoneNo,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          // Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TextManager.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          // Terms & conditions
          const TermsAndConditions(),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          // Sign Up button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TextManager.createAccount),
              )),
        ],
      ),
    ));
  }
}
