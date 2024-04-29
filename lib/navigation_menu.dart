import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/features/shop/screens/home/home.dart';
import 'package:luxfashion_app/features/shop/screens/store/store.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isdark = BHelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            elevation: 0,
            height: 70,
            backgroundColor: isdark ? BColors.black : BColors.white,
            indicatorColor: isdark
                ? BColors.white.withOpacity(0.1)
                : BColors.black.withOpacity(0.1),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (value) {
              controller.selectedIndex.value = value;
            },
            destinations: const [
              NavigationDestination(
                  icon: Icon(CupertinoIcons.home), label: "Home"),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.settings), label: "Store"),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.heart), label: "Wishlist"),
              NavigationDestination(
                  icon: Icon(CupertinoIcons.person_fill), label: "Profile"),
            ],
          )),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screen = [
    const HomeScreen(),
    const StoreScreen(),
    const Column(
      children: [
        Text('data'),
        Text('data'),
        Text('data'),
      ],
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.brown,
    )
  ];
}


/*


    PersistentTabController controller0;

    controller0 = PersistentTabController(initialIndex: 0);

    return Scaffold(
      bottomNavigationBar: PersistentTabView(
        context,

        controller: controller0,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor:
            isdark ? TColors.dark : TColors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: isdark ? TColors.dark : TColors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style3, // Choose the nav bar style with this property.
      ),
      //body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );


List<Widget> _buildScreens() {
  return [
    const HomeScreen(),
    Container(
      color: Colors.brown,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.brown,
    )
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.settings),
      title: ("Store"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      
      icon: const Icon(CupertinoIcons.heart),
      title: ("Wishlist"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.person_fill),
      title: ("Profile"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}

*/

