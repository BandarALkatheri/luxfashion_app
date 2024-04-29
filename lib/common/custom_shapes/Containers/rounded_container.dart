// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class BRoundedContainer extends StatelessWidget {
  const BRoundedContainer({
    Key? key,
    this.width,
    this.height,
    this.radius = BSize.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.backgroundColor = BColors.white,
    this.borderColor = BColors.borderPrimary,
    this.margin,
    this.padding,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color backgroundColor;
  final Color borderColor;

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
