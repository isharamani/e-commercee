import 'package:e_commercee/features/authentication/controllers/onBoarding_controller.dart';
import 'package:e_commercee/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commercee/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commercee/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commercee/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commercee/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/images_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingsubTital1,
                subtitle: TTexts.onBoardingsubTital1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingsubTital2,
                subtitle: TTexts.onBoardingsubTital2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingsubTital3,
                subtitle: TTexts.onBoardingsubTital3,
              )
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

