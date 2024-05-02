// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:luxfashion_app/common/widgets/images/curcler_image.dart';
import 'package:luxfashion_app/utils/constants/color.dart';

class BUserProfileTile extends StatelessWidget {
  const BUserProfileTile({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const BCurclerImage(
          image: 'assets/logo/google.png', width: 50, height: 50, padding: 0),
      title: Text(
        'Bandar Abdullh',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: BColors.white),
      ),
      subtitle: Text(
        'clock6856@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: BColors.white),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.edit_note_sharp,
            color: BColors.white,
          )),
    );
  }
}
