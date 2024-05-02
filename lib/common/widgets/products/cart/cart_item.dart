import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/text/brand_title_text.dart';
import 'package:luxfashion_app/common/text/brand_title_with_verifid_icon.dart';
import 'package:luxfashion_app/common/widgets/images/roundedimage.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        BRoundedimage(
          imageUrl: 'assets/logo/shoe4.png',
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(BSize.xs),
          backgroundColor: BHelperFunction.isDarkMode(context)
              ? BColors.grey
              : BColors.light,
        ),
        const SizedBox(width: BSize.spacebetweenItem),

        // Title , price , Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BBrandTitleWithVerifidIcon(title: 'Nike'),
              const Flexible(
                child: BbrandTitleText(
                  title: 'Black Sports Shoess    ',
                  maxLine: 1,
                ),
              ),
              //
              // Attributes

              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.labelMedium),
                TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.labelMedium),
                TextSpan(
                    text: 'Uk 34 ',
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
