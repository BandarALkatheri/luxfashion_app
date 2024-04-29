import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/widget_image_text/vertical_image_text.dart';

class BHomeCategories extends StatelessWidget {
  const BHomeCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return const BVerticalImageText(
            image: 'assets/logo/logo.png',
            title: 'shose',
          );
        },
      ),
    );
  }
}
