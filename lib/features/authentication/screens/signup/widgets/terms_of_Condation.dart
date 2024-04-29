import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BTermsOfCondation extends StatelessWidget {
  const BTermsOfCondation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);

    return Row(
      children: [
        //iAgree To
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        const SizedBox(
          width: BSize.spacebetweenItem,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: '${BTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: BTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: isDark ? BColors.white : BColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? BColors.white : BColors.primary),
            ),
            TextSpan(
              text: ' and ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: BTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: isDark ? BColors.white : BColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? BColors.white : BColors.primary),
            ),
          ]),
        ),
      ],
    );
  }
}
