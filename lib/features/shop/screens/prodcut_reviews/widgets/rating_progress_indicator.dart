
import 'package:flutter/material.dart';
import 'package:luxfashion_app/features/shop/screens/prodcut_reviews/widgets/progress_indicatior_and_rating.dart';

class BOverAllProductRating extends StatelessWidget {
  const BOverAllProductRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text('4.8',
                style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
            flex: 7,
            child: Column(
              children: [
                BRatingProgressIndicatior(text: '5', value: 1.0),
                BRatingProgressIndicatior(text: '4', value: 0.8),
                BRatingProgressIndicatior(text: '3', value: 0.6),
                BRatingProgressIndicatior(text: '2', value: 0.4),
                BRatingProgressIndicatior(text: '1', value: .2),
              ],
            ))
      ],
    );
  }
}
