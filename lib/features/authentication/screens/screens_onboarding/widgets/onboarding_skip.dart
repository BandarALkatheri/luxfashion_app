import 'package:flutter/material.dart';
import 'package:luxfashion_app/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/device/device_utl.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: BDeviceUtils.getAppBarHeight(),
        right: BSize.defaultSpace,
        child: TextButton(
            onPressed: () {
              OnboardingController.instace.skipPage();
            },
            child: const Text('skip')));
  }
}
