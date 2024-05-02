import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/rounded_container.dart';
import 'package:luxfashion_app/common/text/prodcut_price_text.dart';
import 'package:luxfashion_app/common/text/product_title_text.dart';
import 'package:luxfashion_app/common/text/section_heading.dart';
import 'package:luxfashion_app/common/widgets/chips/choice_chip.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BProductAtaributes extends StatelessWidget {
  const BProductAtaributes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute

        BRoundedContainer(
          padding: const EdgeInsets.all(BSize.md),
          backgroundColor: isDark ? BColors.darkGrey : BColors.grey,
          child: Column(
            children: [
              // Title , price and Stack Staus
              Row(
                children: [
                  const BSectionHeading(
                      title: 'Variations', showActionButton: false),
                  const SizedBox(width: BSize.spacebetweenItem),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const BProductTitleText(
                              title: 'Price : ', smallSize: true),

                          // Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          // sale price
                          const SizedBox(width: BSize.spacebetweenItem),
                          const BProdcutPriceText(price: '20')
                        ],
                      ),

                      //stak
                      Row(
                        children: [
                          const BProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text(
                            'in stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              //Variation Description
              const BProductTitleText(
                title:
                    'this is the description of the product and it can go upto maz 4 lines',
                maxLine: 4,
                smallSize: true,
              )
            ],
          ),
        ),
        const SizedBox(height: BSize.spacebetweenItem),

        //Ataributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(height: BSize.spacebetweenItem / 2),
            Wrap(
              spacing: 8,
              children: [
                BChoichChip(text: 'blue', selected: true, onSelected: (p0) {}),
                BChoichChip(
                    text: 'Green', selected: false, onSelected: (p0) {}),
                BChoichChip(
                    text: 'Yellow', selected: false, onSelected: (p0) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(height: BSize.spacebetweenItem / 2),
            Wrap(
              spacing: 8,
              children: [
                BChoichChip(text: '34', selected: true, onSelected: (p0) {}),
                BChoichChip(text: '36', selected: false, onSelected: (p0) {}),
                BChoichChip(text: '30', selected: false, onSelected: (p0) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
