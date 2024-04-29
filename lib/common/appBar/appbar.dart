import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/device/device_utl.dart';

class BAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BAppBar(
      {Key? key,
      this.title,
      this.showBackArrow = false,
      this.leadingIconData,
      this.acttions,
      this.leadingOnPressed})
      : super(key: key);

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIconData;
  final List<Widget>? acttions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: BSize.md),
      child: AppBar(
          elevation: 0,
          actions: acttions,
          title: title,
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back))
              : leadingIconData != null
                  ? IconButton(
                      onPressed: leadingOnPressed,
                      icon: Icon(leadingIconData),
                    )
                  : null),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
}
