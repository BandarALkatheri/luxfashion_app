import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/styles/spacing_styles.dart';
import 'package:luxfashion_app/utils/constants/image.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPress})
      : super(key: key);

  final String image, title, subtitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              BTexts.youraccountcreatedTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: BSize.spacebetweenItem,
            ),

            Text(
              BTexts.youraccountcreatedSubTitle,
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
                onPressed: onPress,
                child: const Text(BTexts.tcontinue),
              ),
            ),
            const SizedBox(
              height: BSize.spacebetweenItem,
            ),
          ],
        ),
      )),
    );
  }
}
