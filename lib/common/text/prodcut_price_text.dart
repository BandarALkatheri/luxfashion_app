// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BProdcutPriceText extends StatelessWidget {
  const BProdcutPriceText({
    Key? key,
      this.currentysign = '\$',
      this.maxline = 1,
      this.islarge = false,
      required this.price,
      this.linethrough = false,
  }) : super(key: key);

  final String currentysign , price;
  final int maxline;
  final bool islarge;
  final bool linethrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currentysign + price,
      maxLines: maxline,
      overflow: TextOverflow.ellipsis,
      style:  islarge ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: linethrough ? TextDecoration.lineThrough : null):
      Theme.of(context).textTheme.titleLarge!.apply(decoration: linethrough ? TextDecoration.lineThrough : null)
    );
  }
}
