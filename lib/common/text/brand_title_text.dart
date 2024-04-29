// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/enums.dart';

class BbrandTitleText extends StatelessWidget {
  const BbrandTitleText({
    Key? key,
    this.color,
    required this.title,
    this.maxLine = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  }) : super(key: key);

  final Color? color;
  final String title;
  final int maxLine;
  final TextAlign textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
        style: brandTextSizes == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : brandTextSizes == TextSizes.medium
                ? Theme.of(context).textTheme.labelLarge!.apply(color: color)
                : brandTextSizes == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: color)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: color));
  }
}
