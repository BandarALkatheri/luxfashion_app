import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/rounded_container.dart';
import 'package:luxfashion_app/common/widgets/products/cart/coupons_widget.dart';
import 'package:luxfashion_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);
    return Scaffold(
      //app bar
      appBar: BAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),

      body:   SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSize.defaultSpace),
          child: Column(children: [
            // items in cart
            BCartItems(showAddRemoveButton: false),
            SizedBox(height: BSize.spacebetweenSections),

            // coupon Textfields
            BCouponCode(),
            SizedBox(height: BSize.spacebetweenSections),

            //billing sextions
            BRoundedContainer(
              showBorder: true,
              backgroundColor: isDark ? BColors.black : BColors.white,
              child: Column(children: []),
              // Pricing
              
            )
          ]),
        ),
      ),
    );
  }
}
