import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:luxfashion_app/features/shop/screens/cart/cart.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';

class BHomeAppBar extends StatelessWidget {
  const BHomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BAppBar(
      title: Column(children: [
        Text(
          BTexts.nameAppBarTitle,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .apply(color: BColors.grey),
        ),
        Text(
          BTexts.nameAppBarSubTitle,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: BColors.white),
        )
      ]),
      acttions: [
        BCart(
          onPress: () {
            Get.to(CartScreen());
          },
        )
      ],
    );
  }
}
