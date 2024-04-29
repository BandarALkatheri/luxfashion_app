import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/common/widgets_login_signup/success_screen/success_screen.dart';
import 'package:luxfashion_app/features/authentication/screens/login/login.dart';
import 'package:luxfashion_app/utils/constants/image.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(const LoginScreen());
              },
              icon: const Icon(Icons.clear)),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(BSize.defaultSpace),
        child: Column(
          children: [
            // image

            Image(
              image: const AssetImage(BImage.logoApp),
              width: BHelperFunction.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: BSize.spacebetweenSections,
            ),
            //title , subtitle

            Text(
              BTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: BSize.spacebetweenItem,
            ),

            Text(
              "bandarAlkatheri@Gmail.com",
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: BSize.spacebetweenItem,
            ),

            Text(
              BTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: BSize.spacebetweenSections,
            ),

            //button

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(SuccessScreen(
                    image: BImage.logoApp,
                    title: BTexts.youraccountcreatedTitle,
                    subtitle: BTexts.youraccountcreatedSubTitle,
                    onPress: () {
                      Get.to(const LoginScreen());
                    },
                  ));
                },
                child: const Text(BTexts.tcontinue),
              ),
            ),
            const SizedBox(
              height: BSize.spacebetweenItem,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(BTexts.resendEmail),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
