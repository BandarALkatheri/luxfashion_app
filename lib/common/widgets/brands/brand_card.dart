import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/rounded_container.dart';
import 'package:luxfashion_app/common/text/brand_title_with_verifid_icon.dart';
import 'package:luxfashion_app/common/widgets/images/curcler_image.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BBrandCard extends StatelessWidget {
  const BBrandCard({Key? key, required this.showBorder, this.onTap})
      : super(key: key);

  final Function()? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BRoundedContainer(
        padding: const EdgeInsets.all(BSize.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///icon
            Flexible(
              child: BCurclerImage(
                image: 'assets/logo/logo.png',
                isNetworkImage: false,
                backGroundColor: Colors.transparent,
                overlayColor: BHelperFunction.isDarkMode(context)
                    ? BColors.white
                    : BColors.dark,
              ),
            ),
            const SizedBox(
              width: BSize.spacebetweenItem / 2,
            ),

            // Text
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BBrandTitleWithVerifidIcon(
                    title: 'Nike',
                  ),
                  Text(
                    '265 product u',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
