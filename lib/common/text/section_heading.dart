import 'package:flutter/material.dart';

class BSectionHeading extends StatelessWidget {
  const BSectionHeading({
    Key? key,
    this.textColor,
    this.onPressed,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View all',
  }) : super(key: key);

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
