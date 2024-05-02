
import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class BReatingAndShare extends StatelessWidget {
  const BReatingAndShare({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            const SizedBox(
              width: BSize.spacebetweenItem / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: '5.0 ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const TextSpan(text: '(199)')
            ]))
          ],
        ),
        // share button
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: BSize.iconmd,
            ))
      ],
    );
  }
}
