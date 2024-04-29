import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BCart extends StatelessWidget {
  const BCart({Key? key, this.onPress}) : super(key: key);

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPress,
            icon: Icon(Icons.shopping_bag_rounded,
                color: BHelperFunction.isDarkMode(context)
                    ? BColors.white
                    : BColors.darkGrey)),
        Positioned(
          right: 0,
          bottom: 25,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: BColors.black, borderRadius: BorderRadius.circular(200)),
            child: Center(
                child: Text(
              '2',
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: BColors.white,
                  ),
            )),
          ),
        )
      ],
    );
  }
}
