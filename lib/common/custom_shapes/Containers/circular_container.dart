// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BCircularContainer extends StatelessWidget {
  const BCircularContainer({
    Key? key,
    this.margin,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    required this.backgroundColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;

  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroundColor),
      child: child,
    );
  }
}
