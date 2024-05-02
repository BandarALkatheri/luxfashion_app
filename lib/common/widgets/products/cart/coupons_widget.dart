
import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/rounded_container.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BCouponCode extends StatelessWidget {
  const BCouponCode({
    Key? key,
      
  }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
        final isDark = BHelperFunction.isDarkMode(context);

    return BRoundedContainer(
      showBorder: true,
      backgroundColor: isDark ? BColors.dark : BColors.white,
      padding: const EdgeInsets.only(
          top: BSize.sm,
          bottom: BSize.sm,
          right: BSize.sm,
          left: BSize.sm),
      child: Row(
        children: [
          Flexible(
              child: TextFormField(
            decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: '  have a code ? Enter here'),
          )),
          SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: isDark
                        ? BColors.white.withOpacity(0.5)
                        : BColors.dark.withOpacity(0.5),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.1),
                    )),
                onPressed: () {},
                child: const Text(' Apply')),
          )
        ],
      ),
    );
  }
}
