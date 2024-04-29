import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BVerticalImageText extends StatelessWidget {
  const BVerticalImageText({
    Key? key,
    required this.title,
    this.textcolor = BColors.white,
    this.backgroundcolor = BColors.white,
    this.onTap,
    required this.image,
  }) : super(key: key);

  final String image, title;
  final Color textcolor;
  final Color? backgroundcolor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: BSize.spacebetweenItem),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(BSize.sm),
              decoration: BoxDecoration(
                  color: backgroundcolor ??
                      (isDark ? BColors.black : BColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                  color: isDark ? BColors.dark : BColors.white),
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textcolor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
