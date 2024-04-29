import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/image.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';

class BLoginHeader extends StatelessWidget {
  const BLoginHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          image: AssetImage(BImage.logoApp),
          height: 120,
        ),
        Text(
          BTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: BSize.sm,
        ),
        Text(
          BTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
