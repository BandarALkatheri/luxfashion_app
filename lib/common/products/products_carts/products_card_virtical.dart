import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/rounded_container.dart';
import 'package:luxfashion_app/common/icons/tcircular_icon.dart';
import 'package:luxfashion_app/common/styles/shadows.dart';
import 'package:luxfashion_app/common/text/brand_title_with_verifid_icon.dart';
import 'package:luxfashion_app/common/text/prodcut_price_text.dart';
import 'package:luxfashion_app/common/text/product_title_text.dart';
import 'package:luxfashion_app/common/widgets/images/roundedimage.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BProductCardVirtical extends StatelessWidget {
  const BProductCardVirtical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(BSize.cardRadiusLg),
            boxShadow: [BShadowStyle.verticalProductShadow],
            color: isDark ? BColors.darkerGrey : BColors.light),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // thumbnails , wishlist button , Discount tag
            BRoundedContainer(
              height: 160,
              padding: const EdgeInsets.all(BSize.sm),
              backgroundColor: isDark ? BColors.dark : BColors.light,
              child: Stack(children: [
                // thumbnails
                const BRoundedimage(
                  imageUrl: 'assets/logo/logo.png',
                  applyImageRadius: true,
                ),
                // Sale Tag
                Positioned(
                  top: 12,
                  child: BRoundedContainer(
                    radius: BSize.sm,
                    backgroundColor: BColors.secondry.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: BSize.sm, vertical: BSize.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: BColors.black),
                    ),
                  ),
                ),

                // fiverte button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    color: Colors.red,
                    icon: Icons.heart_broken,
                  ),
                ),
              ]),
            ),

            const SizedBox(height: BSize.spacebetweenItem / 2),

            // Details
            const Padding(
              padding: EdgeInsets.only(left: BSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BProductTitleText(
                    title: "Nike Shose ",
                    smallSize: true,
                  ),
                  SizedBox(height: BSize.spacebetweenItem / 2),
                  BBrandTitleWithVerifidIcon(
                    title: 'Nike',
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                const Padding(
                  padding: EdgeInsets.only(left: BSize.sm),
                  child: BProdcutPriceText(price: '25.0', islarge: true),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: BColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(BSize.cardRadiusmd),
                          bottomRight: Radius.circular(BSize.cardRadiusmd))),
                  child: const SizedBox(
                    width: BSize.iconlg * 1.1,
                    height: BSize.iconlg * 1.1,
                    child: Center(
                        child: Icon(
                      Icons.add,
                      color: BColors.white,
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
