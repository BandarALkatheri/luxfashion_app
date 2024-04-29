import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/device/device_utl.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class BTabBar extends StatelessWidget implements PreferredSizeWidget {
  const BTabBar({Key? key, required this.tabs}) : super(key: key);

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunction.isDarkMode(context);

    return Material(
      color: isDark ? BColors.black : BColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: BColors.primary,
        labelColor: isDark ? BColors.white : BColors.primary,
        unselectedLabelColor: BColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
}
