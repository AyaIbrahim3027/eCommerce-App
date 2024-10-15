import 'package:ecommerce_app/common/widgets/elevated_button_widget.dart';
import 'package:ecommerce_app/features/auth/controllers/signup/signup_controller.dart';
import 'package:ecommerce_app/features/auth/screens/widgets/signup/terms_and_conditions.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/valiadators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreenForm extends StatelessWidget {
  const SignUpScreenForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
          child: Column(
            children: [
              // First & Last name
              Row(
                children: [
                  // First name
                  Flexible(
                    child: TextFormField(
                      controller: controller.firstName,
                      validator: (value) => AppValidator.validateEmptyText(
                          TextManager.firstName, value),
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
                      controller: controller.lastName,
                      validator: (value) => AppValidator.validateEmptyText(
                          TextManager.lastName, value),
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
                controller: controller.userName,
                validator: (value) =>
                    AppValidator.validateEmptyText(TextManager.username, value),
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
                controller: controller.email,
                validator: (value) => AppValidator.validateEmail(value),
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
                controller: controller.phoneNumber,
                validator: (value) => AppValidator.validatePhoneNumber(value),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.call),
                  labelText: TextManager.phoneNo,
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwInputFields,
              ),

              // Password
              Obx(
                () => TextFormField(
                  controller: controller.password,
                  validator: (value) => AppValidator.validatePassword(value),
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    labelText: TextManager.password,
                    suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye),
                    ),
                  ),
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
              ElevatedButtonWidget(
                onPressed: () => controller.signup(),
                widget: const Text(TextManager.createAccount),
              ),
            ],
          ),
        ));
  }
}
