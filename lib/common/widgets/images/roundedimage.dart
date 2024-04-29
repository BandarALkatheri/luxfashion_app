import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class BRoundedimage extends StatelessWidget {
  const BRoundedimage(
      {Key? key,
      this.height,
      this.width,
      required this.imageUrl,
      this.applyImageRadius = true,
      this.border,
      this.backgroundColor,
      this.fit = BoxFit.contain,
      this.padding,
      this.isNetworkIamge = false,
      this.onpressed,
      this.borderRadius = BSize.md})
      : super(key: key);

  final double? width, height;
  final double borderRadius;

  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkIamge;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        padding: padding,
        height: height,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkIamge
                ? NetworkImage(imageUrl)
                : AssetImage(
                    imageUrl,
                  ) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
