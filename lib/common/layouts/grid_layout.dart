// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class BGridViewlayout extends StatelessWidget {
  const BGridViewlayout({
    Key? key,
    required this.itemCount,
    this.mainAxisExtent = 260,
    required this.itemBuilder,
  }) : super(key: key);

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          crossAxisSpacing: BSize.gridViewSpacing,
          mainAxisSpacing: BSize.gridViewSpacing),
      itemBuilder: itemBuilder,
    );
  }
}
