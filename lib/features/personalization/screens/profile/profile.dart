import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/common/text/section_heading.dart';
import 'package:luxfashion_app/common/widgets/images/curcler_image.dart';
import 'package:luxfashion_app/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppBar(showBackArrow: true, title: Text('Profile')),

      // body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(BSize.defaultSpace),
        child: Column(children: [
          // prifle picture
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const BCurclerImage(
                  image: 'assets/logo/logo.png',
                  width: 80,
                  height: 80,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Change profile picture')),
              ],
            ),
          ),

          // Details
          const SizedBox(height: BSize.spacebetweenItem / 2),
          const Divider(),
          const SizedBox(height: BSize.spacebetweenItem),
          const BSectionHeading(
              title: 'Profile information', showActionButton: false),

          const SizedBox(height: BSize.spacebetweenItem),

          BProfileMenu(
              icon: Icons.arrow_forward_ios,
              title: 'Name',
              subtitle: 'Bandar Ali',
              onPress: () {}),
          BProfileMenu(
              icon: Icons.arrow_forward_ios,
              title: 'User Name',
              subtitle: 'Bandar668',
              onPress: () {}),

          const SizedBox(height: BSize.spacebetweenItem),
          const Divider(),
          const SizedBox(height: BSize.spacebetweenItem),

          // personal information

          const BSectionHeading(
              title: 'personal information', showActionButton: false),

          const SizedBox(height: BSize.spacebetweenItem),

          BProfileMenu(
              icon: Icons.arrow_forward_ios,
              title: 'user ID',
              subtitle: '45877',
              onPress: () {}),
          BProfileMenu(
              icon: Icons.arrow_forward_ios,
              title: 'Email',
              subtitle: 'Bandar685@gmail.com',
              onPress: () {}),
          BProfileMenu(
              icon: Icons.arrow_forward_ios,
              title: 'phone Number',
              subtitle: '+967 733 222 222',
              onPress: () {}),
          BProfileMenu(
              icon: Icons.arrow_forward_ios,
              title: 'Gender',
              subtitle: 'Male',
              onPress: () {}),
          BProfileMenu(
              icon: Icons.arrow_forward_ios,
              title: 'Data of birth',
              subtitle: '10 Oc ,1994',
              onPress: () {}),

          // close acount
          const Divider(),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text('Close acount',
                  style: TextStyle(color: BColors.error)),
            ),
          )
        ]),
      ),
    );
  }
}
