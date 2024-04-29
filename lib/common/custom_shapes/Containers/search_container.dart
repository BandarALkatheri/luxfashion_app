import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/device/device_utl.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BSearchContainer extends StatelessWidget {
  const BSearchContainer(
      {Key? key,
      // this.padding = TSize.defaultSpace,
      required this.text,
      this.padding = const EdgeInsets.symmetric(horizontal: BSize.defaultSpace),
      this.icon = Icons.search,
      this.showBackground = true,
      this.showBorder = true,
      this.onTap})
      : super(key: key);

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    final isdark = BHelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: BDeviceUtils.getScreenwidth(),
          padding: const EdgeInsets.all(BSize.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? isdark
                      ? BColors.dark
                      : BColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(BSize.cardRadiusLg),
              border: showBorder ? Border.all(color: BColors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: BColors.darkGrey,
              ),
              const SizedBox(
                width: BSize.spacebetweenItem,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
