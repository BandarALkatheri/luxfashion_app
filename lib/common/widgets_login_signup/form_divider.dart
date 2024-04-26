import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:flutter/material.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({Key? key, required this.DividerText}) : super(key: key);

  final String DividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
            child: Divider(
          color: TColors.grey,
          thickness: 1,
          endIndent: 5,
          indent: 60,
        )),
        Text(
          DividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Flexible(
            child: Divider(
          color: TColors.grey,
          thickness: 1,
          endIndent: 60,
          indent: 5,
        )),
      ],
    );
  }
}
