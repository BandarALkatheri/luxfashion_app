import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/image.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:flutter/material.dart';

class TSoicalButton extends StatelessWidget {
  const TSoicalButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(200)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(TImage.google),
              height: TSize.iconmd,
              width: TSize.iconmd,
            ),
          ),
        ),
        const SizedBox(
          width: TSize.spacebetweenItem,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(200)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(TImage.facebook),
              height: TSize.iconmd,
              width: TSize.iconmd,
            ),
          ),
        ),
      ],
    );
  }
}
