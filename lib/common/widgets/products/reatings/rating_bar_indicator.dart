// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:luxfashion_app/utils/constants/color.dart';

class BRatingBarIndicator extends StatelessWidget {
  const BRatingBarIndicator({
    Key? key,
    required this.ratings,
  }) : super(key: key);

  final double ratings;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: ratings,
      itemSize: 20,
      unratedColor: BColors.grey,
      itemBuilder: (context, index) {
        return const Icon(
          Icons.star,
          color: BColors.primary,
        );
      },
    );
  }
}
