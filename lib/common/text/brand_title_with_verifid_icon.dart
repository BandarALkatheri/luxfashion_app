// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/text/brand_title_text.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/enums.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class BBrandTitleWithVerifidIcon extends StatelessWidget {
  const BBrandTitleWithVerifidIcon(
      {Key? key,
      required this.title,
      this.maxLines = 1,
      this.iconColor = BColors.primary,
      this.textAlign = TextAlign.center,
      this.brandTextSizes = TextSizes.small,
      this.textColor})
      : super(key: key);
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BbrandTitleText(
              color: textColor,
              maxLine: maxLines,
              textAlign: textAlign,
              brandTextSizes: brandTextSizes,
              title: title),
        ),
        const SizedBox(width: BSize.xs),
        const Icon(
          Icons.verified,
          color: BColors.primary,
          size: BSize.iconxs,
        ),
      ],
    );
  }
}
