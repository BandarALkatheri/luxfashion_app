// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/rounded_container.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BSingleAddredd extends StatelessWidget {
  const BSingleAddredd({
    Key? key,
    required this.selectedAdress,
  }) : super(key: key);

  final bool selectedAdress;

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);
    return BRoundedContainer(
      padding: const EdgeInsets.all(BSize.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAdress
          ? BColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAdress
          ? Colors.transparent
          : isDark
              ? BColors.darkGrey
              : BColors.grey,
      margin: const EdgeInsets.only(bottom: BSize.spacebetweenItem),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Icon(
              selectedAdress ? Icons.circle_sharp : null,
              color: selectedAdress
                  ? isDark
                      ? BColors.light
                      : BColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bandar Ali',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: BSize.sm / 2),
              const Text(
                '+967 733 825 200',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: BSize.sm / 2),
              const Text(
                '8224 Bandar Ali , south , Maine m 87665 , Yemen',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
