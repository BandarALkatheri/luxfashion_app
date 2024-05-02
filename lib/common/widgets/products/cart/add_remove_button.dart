


import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/icons/circular_icon.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BProdcutQuantityWithAddRemoveButton extends StatelessWidget {
  const BProdcutQuantityWithAddRemoveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BCircularIcon(
          width: 32,
          height: 32,
          size: BSize.md,
          color: BHelperFunction.isDarkMode(context)
              ? BColors.white
              : BColors.black,
          backgroundColor: BHelperFunction.isDarkMode(context)
              ? BColors.darkGrey
              : BColors.light,
          icon: Icons.add,
        ),
    
        // Text count
        const SizedBox(width: BSize.spacebetweenItem),
        Text('2',
            style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: BSize.spacebetweenItem),
    
        //button +
        const BCircularIcon(
          width: 32,
          height: 32,
          size: BSize.md,
          color: BColors.white,
          backgroundColor: BColors.primary,
          icon: Icons.add,
        ),
      ],
    );
  }
}
