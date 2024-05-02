import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/rounded_container.dart';
import 'package:luxfashion_app/common/widgets/products/reatings/rating_bar_indicator.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              const CircleAvatar(
                  backgroundImage: AssetImage('assets/logo/google.png')),
              const SizedBox(width: BSize.spacebetweenItem),
              Text(
                ' Bandr Ali',
                style: Theme.of(context).textTheme.titleLarge,
              )
            ]),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: BSize.spacebetweenItem),

        //Review
        Row(
          children: [
            const BRatingBarIndicator(ratings: 3.3),
            const SizedBox(width: BSize.spacebetweenItem),
            Text(
              '1 Nov ,2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: BSize.spacebetweenItem),
        const ReadMoreText(
            'A simple yet fully customizable rating bar for flutter which also include a rating bar indicator, supporting any fraction of rating. for flutter which also include a rating bar indicator, supporting any fraction of rating',
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: ' show less',
            trimCollapsedText: ' show more',
            lessStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: BColors.primary),
            moreStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: BColors.primary)),
        const SizedBox(height: BSize.spacebetweenItem),

        //company Review
        BRoundedContainer(
          backgroundColor: isDark ? BColors.darkGrey : BColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(BSize.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('store',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('1 Nov ,2023',
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
                const SizedBox(height: BSize.spacebetweenItem),
                const ReadMoreText(
                    'A simple yet fully customizable rating bar for flutter which also include a rating bar indicator, supporting any fraction of rating. for flutter which also include a rating bar indicator, supporting any fraction of rating',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: ' show less',
                    trimCollapsedText: ' show more',
                    lessStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: BColors.primary),
                    moreStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: BColors.primary)),
              ],
            ),
          ),
        ),
        const SizedBox(height: BSize.spacebetweenSections),
      ],
    );
  }
}
