import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/rounded_container.dart';
import 'package:luxfashion_app/common/widgets/brands/brand_card.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BBrandShowCase extends StatelessWidget {
  const BBrandShowCase({Key? key, required this.images}) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return BRoundedContainer(
      padding: const EdgeInsets.all(BSize.md),
      showBorder: true,
      borderColor: BColors.darkerGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: BSize.spacebetweenItem),
      child: Column(children: [
        // Brand with product count
        const BBrandCard(
          showBorder: false,
        ),
        const SizedBox(
          height: BSize.spacebetweenItem,
        ),

        // Brand top 3 products image
        Row(
          children: images
              .map((image) => brandTopProductImageWidget(image, context))
              .toList(),
        )
      ]),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: BRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(BSize.md),
      backgroundColor:
          BHelperFunction.isDarkMode(context) ? BColors.dark : BColors.light,
      margin: const EdgeInsets.only(right: BSize.sm),
      child: Image(
        image: AssetImage(
          image,
        ),
        fit: BoxFit.contain,
      ),
    ),
  );
}
