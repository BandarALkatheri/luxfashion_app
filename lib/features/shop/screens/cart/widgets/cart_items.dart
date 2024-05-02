import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/text/prodcut_price_text.dart';
import 'package:luxfashion_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:luxfashion_app/common/widgets/products/cart/cart_item.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class BCartItems extends StatelessWidget {
  const BCartItems({
    this.showAddRemoveButton = true,
    Key? key,
  }) : super(key: key);

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      shrinkWrap: true,
      separatorBuilder: (context, index) =>
          const SizedBox(height: BSize.spacebetweenSections),
      itemBuilder: (context, index) {
        return Column(
          children: [
            //cart item
            const TCartItem(),
            if (showAddRemoveButton)
              const SizedBox(height: BSize.spacebetweenItem),
            if (showAddRemoveButton)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 70),
                      // Add Remove Button
                      //button -

                      BProdcutQuantityWithAddRemoveButton(),
                    ],
                  ),
                  // price
                  BProdcutPriceText(price: '255')
                ],
              )
          ],
        );
      },
    );
  }
}
