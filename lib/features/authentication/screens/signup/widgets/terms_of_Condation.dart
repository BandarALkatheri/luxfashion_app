import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class TTermsOfCondation extends StatelessWidget {
  const TTermsOfCondation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunction.isDarkMode(context);

    return Row(
      children: [
        //iAgree To
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        const SizedBox(
          width: TSize.spacebetweenItem,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: '${TTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: TTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: isDark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.white : TColors.primary),
            ),
            TextSpan(
              text: ' and ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: TTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: isDark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.white : TColors.primary),
            ),
          ]),
        ),
      ],
    );
  }
}
