import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';

class BFormDivider extends StatelessWidget {
  const BFormDivider({Key? key, required this.dividerText}) : super(key: key);

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
            child: Divider(
          color: BColors.grey,
          thickness: 1,
          endIndent: 5,
          indent: 60,
        )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Flexible(
            child: Divider(
          color: BColors.grey,
          thickness: 1,
          endIndent: 60,
          indent: 5,
        )),
      ],
    );
  }
}
