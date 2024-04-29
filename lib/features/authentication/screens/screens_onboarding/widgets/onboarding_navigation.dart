import 'package:flutter/widgets.dart';
import 'package:luxfashion_app/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/device/device_utl.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);
    final controller = OnboardingController.instace;

    return Positioned(
        bottom: BDeviceUtils.getBottomNavigationBarHeight(),
        left: BSize.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          onDotClicked: controller.dotNavigationClick,
          axisDirection: Axis.vertical,
          effect: ExpandingDotsEffect(
              activeDotColor: isDark ? BColors.light : BColors.dark,
              dotHeight: 10,
              dotWidth: 10),
        ));
  }
}
