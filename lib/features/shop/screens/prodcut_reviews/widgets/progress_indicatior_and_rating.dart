
import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/device/device_utl.dart';

class BRatingProgressIndicatior extends StatelessWidget {
  const BRatingProgressIndicatior({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
            flex: 11,
            child: SizedBox(
              width: BDeviceUtils.getScreenwidth() * 0.8,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 11,
                backgroundColor: BColors.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor: const AlwaysStoppedAnimation(BColors.primary),
              ),
            ))
      ],
    );
  }
}
