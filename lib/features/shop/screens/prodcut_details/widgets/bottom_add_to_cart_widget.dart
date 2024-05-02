import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/icons/circular_icon.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BottomAddToCartWidget extends StatelessWidget {
  const BottomAddToCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);

    return Container(
      // navigation bar

      padding: const EdgeInsets.symmetric(
          horizontal: BSize.defaultSpace, vertical: BSize.defaultSpace / 2),
      decoration: BoxDecoration(
          color: isDark ? BColors.darkGrey : BColors.light,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(BSize.cardRadiusLg),
              topRight: Radius.circular(BSize.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const BCircularIcon(
                icon: Icons.minimize_rounded,
                backgroundColor: BColors.darkerGrey,
                width: 40,
                height: 40,
                color: BColors.white,
              ),
              const SizedBox(width: BSize.spacebetweenItem),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: BSize.spacebetweenItem),
              const BCircularIcon(
                icon: Icons.add,
                backgroundColor: BColors.dark,
                width: 40,
                height: 40,
                color: BColors.white,
              ),
            ],
          ),
          // button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(BSize.md),
                backgroundColor: BColors.black,
                side: const BorderSide(color: BColors.black)),
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
