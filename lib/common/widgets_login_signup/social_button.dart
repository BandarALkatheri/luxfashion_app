import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/image.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class BSoicalButton extends StatelessWidget {
  const BSoicalButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: BColors.grey),
              borderRadius: BorderRadius.circular(200)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(BImage.google),
              height: BSize.iconmd,
              width: BSize.iconmd,
            ),
          ),
        ),
        const SizedBox(
          width: BSize.spacebetweenItem,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: BColors.grey),
              borderRadius: BorderRadius.circular(200)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(BImage.facebook),
              height: BSize.iconmd,
              width: BSize.iconmd,
            ),
          ),
        ),
      ],
    );
  }
}
