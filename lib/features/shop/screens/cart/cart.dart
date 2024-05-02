import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:luxfashion_app/features/shop/screens/checkout/checkout.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar

      appBar: const BAppBar(title: Text('Cart'), showBackArrow: true),
      //bottom Navigation bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: BSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(const CheckOutScreen());
          },
          child: const Text('Checkout \$250'),
        ),
      ),
      //body
      body: const Padding(
        padding: EdgeInsets.all(BSize.defaultSpace),
        child: BCartItems(),
      ),
    );
  }
}
