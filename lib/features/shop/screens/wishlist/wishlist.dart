import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/common/icons/circular_icon.dart';
import 'package:luxfashion_app/common/layouts/grid_layout.dart';
import 'package:luxfashion_app/common/widgets/products/products_carts/products_card_virtical.dart';
import 'package:luxfashion_app/features/shop/screens/home/home.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class FavouritScreen extends StatelessWidget {
  const FavouritScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppBar(
          title: Text(
            'WishList',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          acttions: [
            BCircularIcon(
              icon: Icons.add,
              onPressed: () {
                Get.to(const HomeScreen());
              },
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(BSize.defaultSpace),
            child: Column(
              children: [
                BGridViewlayout(
                  itemCount: 20,
                  itemBuilder: (p0, p1) {
                    return const BProductCardVirtical();
                  },
                )
              ],
            )),
      ),
    );
  }
}
