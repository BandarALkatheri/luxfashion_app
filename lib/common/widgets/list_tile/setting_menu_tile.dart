// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/constants/color.dart';

class BSettingsMenuTile extends StatelessWidget {
  const BSettingsMenuTile(
      {Key? key,
      required this.title,
      required this.icon,
      required this.subtitle,
      this.trailing,
      this.onTap})
      : super(key: key);

  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: BColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
