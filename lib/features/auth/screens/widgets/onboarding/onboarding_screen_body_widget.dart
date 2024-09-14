import 'package:ecommerce_app/features/auth/screens/widgets/onboarding/onBoarding_dot_navigation.dart';
import 'package:ecommerce_app/features/auth/screens/widgets/onboarding/onBoarding_next_button.dart';
import 'package:ecommerce_app/features/auth/screens/widgets/onboarding/onBoarding_page_view.dart';
import 'package:ecommerce_app/features/auth/screens/widgets/onboarding/onBoarding_skip_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingScreenBodyWidget extends StatelessWidget {
  const OnBoardingScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return const Stack(
      children: [
        // Horizontal scrollable pages
        OnBoardingPageView(),

        // Skip button
        OnBoardingSkipButton(),

        // Dot navigation SmoothPageIndicator
        OnBoardingDotNavigation(),

        // Circular button
        OnBoardingNextButton(),
      ],
    );
  }
}
