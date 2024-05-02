import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/common/custom_shapes/curved/curved_widget.dart';
import 'package:luxfashion_app/common/icons/circular_icon.dart';
import 'package:luxfashion_app/common/widgets/images/roundedimage.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

import '../../../../../utils/helpers/helper_func.dart';

class BProductImageSlider extends StatelessWidget {
  const BProductImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BcurvedWidget(
      child: Container(
        color:
            BHelperFunction.isDarkMode(context) ? BColors.dark : BColors.light,
        child: Stack(
          children: [
            // main large image
            const SizedBox(
              height: 400,
              child: Padding(
                  padding: EdgeInsets.all(BSize.productIamgeRadius * 2),
                  child: Center(
                    child: Image(image: AssetImage('assets/logo/shoe4.png')),
                  )),
            ),

            // iamge slider
            Positioned(
              right: 0,
              bottom: 30,
              left: BSize.defaultSpace / 2,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, int index) {
                    return BRoundedimage(
                      imageUrl: 'assets/logo/shoe3.png',
                      width: 80,
                      backgroundColor: BHelperFunction.isDarkMode(context)
                          ? BColors.dark
                          : BColors.white,
                      border: Border.all(color: BColors.primary),
                      padding: const EdgeInsets.all(BSize.sm),
                    );
                  },
                  separatorBuilder: (_, __) => const SizedBox(
                    width: BSize.spacebetweenItem,
                  ),
                  itemCount: 6,
                ),
              ),
            ),

            // Appbar Icon
            const BAppBar(
              showBackArrow: true,
              acttions: [
                BCircularIcon(
                  icon: Icons.heart_broken,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
