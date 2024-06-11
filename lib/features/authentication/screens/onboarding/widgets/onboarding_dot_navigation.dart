import 'package:e_commercee/features/authentication/controllers/onBoarding_controller.dart';
import 'package:e_commercee/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperfunction.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationbarHeight()*25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(activeDotColor:dark? TColors.light: TColors.dark,dotHeight: 6)),);
  }
}
