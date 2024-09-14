import 'package:ecommerce_app/features/auth/screens/widgets/onboarding/onBoarding_page.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        OnBoardingPage(
          image: ImageManager.onBoardingImage1,
          title: TextManager.onBoardingTitle1,
          subTitle: TextManager.onBoardingSubTitle1,
        ),
        OnBoardingPage(
          image: ImageManager.onBoardingImage2,
          title: TextManager.onBoardingTitle2,
          subTitle: TextManager.onBoardingSubTitle2,
        ),
        OnBoardingPage(
          image: ImageManager.onBoardingImage3,
          title: TextManager.onBoardingTitle3,
          subTitle: TextManager.onBoardingSubTitle3,
        ),
      ],
    );
  }
}
