import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';

class BShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: BColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontalProductShadow = BoxShadow(
      color: BColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
