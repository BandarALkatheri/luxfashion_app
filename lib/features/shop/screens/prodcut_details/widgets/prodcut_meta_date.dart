import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/rounded_container.dart';
import 'package:luxfashion_app/common/text/brand_title_with_verifid_icon.dart';
import 'package:luxfashion_app/common/text/prodcut_price_text.dart';
import 'package:luxfashion_app/common/text/product_title_text.dart';
import 'package:luxfashion_app/common/widgets/images/curcler_image.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/enums.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BProductMetaDate extends StatelessWidget {
  const BProductMetaDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // price and Sale price
        Row(
          children: [
            //Sale Tag
            BRoundedContainer(
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

            const SizedBox(width: BSize.spacebetweenItem),

            // Price
            /*
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
                    
                    */

            const BProdcutPriceText(
              price: '250',
              linethrough: true,
            ),
            const SizedBox(width: BSize.spacebetweenItem),
            const BProdcutPriceText(
              price: '175',
              islarge: true,
            )
          ],
        ),
        const SizedBox(height: BSize.spacebetweenItem / 1.5),

        // title
        const BProductTitleText(
          title: 'Red Nike shose',
        ),
        const SizedBox(height: BSize.spacebetweenItem / 1.5),

        //stack Status
        Row(
          children: [
            const BProductTitleText(
              title: 'Status',
            ),
            const SizedBox(width: BSize.spacebetweenItem),
            Text(
              'in Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(height: BSize.spacebetweenItem / 1.5),

        //Brand
        Row(
          children: [
            BCurclerImage(
              image: 'assets/logo/shoe4.png',
              width: 32,
              height: 32,
              overlayColor: BHelperFunction.isDarkMode(context)
                  ? BColors.white
                  : BColors.black,
            ),
            const BBrandTitleWithVerifidIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
