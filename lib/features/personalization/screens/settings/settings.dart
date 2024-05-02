import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/primary_header_container.dart';
import 'package:luxfashion_app/common/text/section_heading.dart';
import 'package:luxfashion_app/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:luxfashion_app/common/widgets/list_tile/user_profile_tile.dart';
import 'package:luxfashion_app/features/personalization/screens/address/address.dart';
import 'package:luxfashion_app/features/personalization/screens/profile/profile.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            BPrimaryHeaderContainer(
              child: Column(
                children: [
                  // appbar

                  BAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: BColors.white),
                    ),
                  ),

                  // user profile
                  BUserProfileTile(
                    onPressed: () {
                      Get.to(const ProfileScreen());
                    },
                  ),

                  const SizedBox(height: BSize.spacebetweenSections),
                ],
              ),
            ),

            // body

            Padding(
              padding: const EdgeInsets.all(
                BSize.defaultSpace,
              ),
              child: Column(children: [
                const BSectionHeading(
                    title: 'Account Settings', showActionButton: false),
                const SizedBox(height: BSize.spacebetweenItem),
                BSettingsMenuTile(
                    icon: Icons.home,
                    title: 'My Adress',
                    subtitle: 'set shopping delivery address',
                    onTap: () {
                      Get.to(const UserAddressScreen());
                    }),
                BSettingsMenuTile(
                    icon: Icons.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'add , remove products and move checkout',
                    onTap: () {}),
                BSettingsMenuTile(
                    icon: Icons.badge_outlined,
                    title: 'my Orders',
                    subtitle: 'in pragress and completed order',
                    onTap: () {}),
                BSettingsMenuTile(
                    icon: Icons.balance,
                    title: 'bank Acctount',
                    subtitle: 'list of all the discount coupons',
                    onTap: () {}),
                BSettingsMenuTile(
                    icon: Icons.notification_add,
                    title: 'Notifications',
                    subtitle: 'set any kind of notification message',
                    onTap: () {}),
                BSettingsMenuTile(
                    icon: Icons.privacy_tip,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                    onTap: () {}),

                // App Settings

                const SizedBox(height: BSize.spacebetweenSections),
                const BSectionHeading(
                  title: 'App Settings',
                  showActionButton: false,
                ),
                const SizedBox(height: BSize.spacebetweenItem),
                const BSettingsMenuTile(
                    title: 'load Data',
                    icon: Icons.upload,
                    subtitle: 'Upload Data to your cloud Firebase'),
                BSettingsMenuTile(
                    icon: Icons.location_city,
                    title: 'Geolocation',
                    subtitle: 'set recommendation based on location',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    )),
                BSettingsMenuTile(
                    icon: Icons.security_sharp,
                    title: 'safe mode',
                    subtitle: 'Search result is safe all ages',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    )),
                BSettingsMenuTile(
                    icon: Icons.image,
                    title: 'HD image Quality',
                    subtitle: 'set image quality to be seen',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    )),
                BSettingsMenuTile(
                    icon: Icons.dark_mode,
                    title: 'change Mode',
                    subtitle: 'change to drakMode or lightMode',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    )),

                // Logo Button
                const SizedBox(height: BSize.spacebetweenSections),
                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    )),
                const SizedBox(
                  height: BSize.spacebetweenSections * 2.5,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
