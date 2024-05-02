// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/common/widgets/products/reatings/rating_bar_indicator.dart';
import 'package:luxfashion_app/features/shop/screens/prodcut_reviews/widgets/rating_progress_indicator.dart';
import 'package:luxfashion_app/features/shop/screens/prodcut_reviews/widgets/user_review_card.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class ProdcutReviewsScreen extends StatelessWidget {
  const ProdcutReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: const BAppBar(title: Text('Reviews & Ratings')),

      //body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(BSize.defaultSpace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
              'Ratings and reviews are verified and are from people who use same type of device that you use'),
          const SizedBox(height: BSize.spacebetweenItem),

          // overall prodcut Ratings
          const BOverAllProductRating(),

          //rating Star
          const BRatingBarIndicator(
            ratings: 3.5,
          ),
          Text('12,611', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: BSize.spacebetweenSections),

          // user review list
          const UserReviewCard(),
          const UserReviewCard(),
        ]),
      ),
    );
  }
}
