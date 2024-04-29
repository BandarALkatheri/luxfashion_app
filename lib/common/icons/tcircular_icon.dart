// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

import '../../utils/constants/color.dart';

class TCircularIcon extends StatelessWidget {
  // custom Circular icon widget with a background color
  // properties
  // container -> , width , height , backgroundColor

  //icon -> size , color onPress
  const TCircularIcon({
    Key? key,
    this.height,
    this.size = BSize.lg,
    this.width,
    required this.icon,
    this.backgroundColor,
    this.color,
    this.onPressed,
  }) : super(key: key);

  // final bool isDark;
  final double? size, height, width;
  final IconData icon;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null
              ? backgroundColor!
              : BHelperFunction.isDarkMode(context)
                  ? BColors.black.withOpacity(0.9)
                  : BColors.white.withOpacity(0.9)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
