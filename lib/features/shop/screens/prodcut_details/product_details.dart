import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/common/text/section_heading.dart';
import 'package:luxfashion_app/features/shop/screens/prodcut_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:luxfashion_app/features/shop/screens/prodcut_details/widgets/prodcut_meta_date.dart';
import 'package:luxfashion_app/features/shop/screens/prodcut_details/widgets/product_attaributes.dart';
import 'package:luxfashion_app/features/shop/screens/prodcut_details/widgets/product_image_slider.dart';
import 'package:luxfashion_app/features/shop/screens/prodcut_details/widgets/reating_and_share.dart';
import 'package:luxfashion_app/features/shop/screens/prodcut_reviews/prodcut_reviews.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCartWidget(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          // product image slider
          const BProductImageSlider(),

          // product Details

          Padding(
            padding: const EdgeInsets.only(
                left: BSize.defaultSpace,
                right: BSize.defaultSpace,
                bottom: BSize.defaultSpace),
            child: Column(children: [
              //reating and share Button
              const BReatingAndShare(),

              // price ,title , stak , brand
              const BProductMetaDate(),
              // Attribute
              const BProductAtaributes(),
              const SizedBox(height: BSize.spacebetweenSections),
              // checkout button

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('checkout'))),

              const SizedBox(height: BSize.spacebetweenSections),

              // Description
              const BSectionHeading(
                  title: 'Description', showActionButton: false),
              const SizedBox(height: BSize.spacebetweenItem),
              const ReadMoreText(
                'Using a widget function instead of a widget fully guarantees that the widget and its controllers will be removed from memory when they are no longer used',
                trimMode: TrimMode.Line,
                trimLength: 2,
                trimCollapsedText: ' Show more',
                trimExpandedText: ' less',
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              )

              // Review
              ,
              const Divider(),
              const SizedBox(height: BSize.spacebetweenItem),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BSectionHeading(
                    title: 'Reviews (199)',
                    showActionButton: false,
                  ),
                  IconButton(
                      onPressed: () {
                        Get.to(ProdcutReviewsScreen());
                      },
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              ),
              const SizedBox(height: BSize.spacebetweenSections),
            ]),
          )
        ],
      )),
    );
  }
}
