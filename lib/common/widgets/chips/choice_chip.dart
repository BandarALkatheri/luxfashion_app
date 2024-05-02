// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/circular_container.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BChoichChip extends StatelessWidget {
  const BChoichChip({
    Key? key,
    required this.text,
    required this.selected,
    this.onSelected,
  }) : super(key: key);
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = BHelperFunction.getColor(text) != null;

    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? BColors.white : null),
      shape: isColor ? const CircleBorder() : null,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      backgroundColor: isColor ? BHelperFunction.getColor(text)! : null,
      avatar: isColor
          ? BCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: BHelperFunction.getColor(text)!)
          : null,
    );
  }
}
