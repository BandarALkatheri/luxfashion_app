import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BCurclerImage extends StatelessWidget {
  const BCurclerImage({
    Key? key,
    this.padding = BSize.sm,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backGroundColor,
    this.width = 56,
    this.height = 56,
  }) : super(key: key);

  final BoxFit fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backGroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: BHelperFunction.isDarkMode(context)
              ? BColors.black
              : BColors.white,
          borderRadius: BorderRadius.circular(100)),
      child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          fit: fit,
          color: overlayColor),
    );
  }
}
