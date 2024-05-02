import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/curved/curved_widget.dart';
import 'package:luxfashion_app/utils/constants/color.dart';

class BPrimaryHeaderContainer extends StatelessWidget {
  const BPrimaryHeaderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BcurvedWidget(
      child: Container(
       
             //   width: double.infinity,
        color: BColors.primary,
       // padding: const EdgeInsets.all(0),
        child: Stack(children: [child]),
      ),
    );
  }
}
