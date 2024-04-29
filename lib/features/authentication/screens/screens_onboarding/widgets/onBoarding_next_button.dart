import 'package:flutter/material.dart';
import 'package:luxfashion_app/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/device/device_utl.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isdark = BHelperFunction.isDarkMode(context);
    return Positioned(
        right: BSize.defaultSpace,
        bottom: BDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: isdark ? BColors.primary : BColors.black),
            onPressed: () {
              OnboardingController.instace.nextPage();
            },
            child: const Icon(Icons.arrow_right)));
  }
}
