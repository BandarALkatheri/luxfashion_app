import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/primary_header_container.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/search_container.dart';
import 'package:luxfashion_app/common/layouts/grid_layout.dart';
import 'package:luxfashion_app/common/products/products_carts/products_card_virtical.dart';
import 'package:luxfashion_app/common/text/section_heading.dart';
import 'package:luxfashion_app/features/shop/screens/home/widget/home_appbar.dart';
import 'package:luxfashion_app/features/shop/screens/home/widget/home_categories.dart';
import 'package:luxfashion_app/features/shop/screens/home/widget/promo_silder.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BPrimaryHeaderContainer(
                child: Column(
              //-- Header

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-- AppBar
                BHomeAppBar(),

                SizedBox(
                  height: BSize.spacebetweenSections,
                ),

                //-- SearchBar
                BSearchContainer(text: 'Search in Store'),

                SizedBox(
                  height: BSize.spacebetweenSections,
                ),

                Padding(
                  padding: EdgeInsets.only(left: BSize.defaultSpace),
                  child: Column(
                    children: [
                      //-- heading
                      BSectionHeading(
                        title: 'Popular Category',
                        showActionButton: false,
                      ),
                      SizedBox(height: BSize.spacebetweenItem),

                      //-- categories

                      BHomeCategories()
                    ],
                  ),
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(BSize.defaultSpace),
              child: Column(
                children: [
                  // promo slider

                  const BPromoSilder(banners: [
                    'assets/images/banners/bannar1.jpg',
                    'assets/images/banners/bannar1.jpg',
                    'assets/images/banners/bannar1.jpg',
                    'assets/images/banners/bannar1.jpg'
                  ]),

                  const SizedBox(height: BSize.spacebetweenSections),

                  // products

                  BGridViewlayout(
                    itemCount: 4,
                    mainAxisExtent: 260,
                    itemBuilder: (p0, p1) {
                      return const BProductCardVirtical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
