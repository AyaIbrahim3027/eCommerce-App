import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreenForm extends StatelessWidget {
  const LoginScreenForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
      child: Column(
        children: [
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

          // Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TextManager.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields / 2,
          ),

          // Remember me & Forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TextManager.rememberMe),
                ],
              ),

              // Forget password
              TextButton(
                onPressed: () {},
                child: const Text(TextManager.forgetPassword),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          // Sign In button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TextManager.signIn),
              )),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          // Create account button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(TextManager.createAccount),
              )),
        ],
      ),
    ));
  }
}
