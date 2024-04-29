import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/common/styles/spacing_styles.dart';
import 'package:luxfashion_app/utils/constants/image.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class RestPasswordScreen extends StatelessWidget {
  const RestPasswordScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: BSpacingStyle.paddingWithAppBarHeight,
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
              BTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: BSize.spacebetweenItem,
            ),

            Text(
              BTexts.changeYourPasswordSubTitle,
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
                onPressed: () {},
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
