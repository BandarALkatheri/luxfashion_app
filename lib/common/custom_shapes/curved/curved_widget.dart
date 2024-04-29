import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/curved/curved.dart';

class BcurvedWidget extends StatelessWidget {
  const BcurvedWidget({
    this.child,
    Key? key,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BCustomCurvedEdges(),
      child: child,
    );
  }
}
