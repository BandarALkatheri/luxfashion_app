import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/common/appBar/tapbar.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/search_container.dart';
import 'package:luxfashion_app/common/layouts/grid_layout.dart';
import 'package:luxfashion_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:luxfashion_app/common/text/section_heading.dart';
import 'package:luxfashion_app/common/widgets/brands/brand_card.dart';
import 'package:luxfashion_app/features/shop/screens/store/widget/catogry_tap.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/helpers/helper_func.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          // Appbear
          appBar: BAppBar(
            title: Text(
              "Store",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            acttions: const [BCart()],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    floating: true,
                    expandedHeight: 440,
                    automaticallyImplyLeading: false,
                    backgroundColor: BHelperFunction.isDarkMode(context)
                        ? BColors.black
                        : BColors.white,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(BSize.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          // search bar
                          const SizedBox(height: BSize.spacebetweenItem),
                          const BSearchContainer(
                              text: 'search in store',
                              showBackground: true,
                              showBorder: true,
                              padding: EdgeInsets.zero),
                          const SizedBox(height: BSize.spacebetweenSections),

                          // Featured brands
                          BSectionHeading(
                            title: 'Fuatured Brands',
                            onPressed: () {},
                          ),

                          const SizedBox(height: BSize.spacebetweenItem / 1.5),
                          BGridViewlayout(
                            mainAxisExtent: 80,
                            itemCount: 4,
                            itemBuilder: (p0, p1) {
                              return const BBrandCard(
                                showBorder: true,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    //  taps
                    bottom: const BTabBar(
                      tabs: [
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Sports')),
                        Tab(child: Text('furntcerr'))
                      ],
                    ),
                  )
                ];
              },
              body: const TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  BCatogryTap(),
                  BCatogryTap(),
                  BCatogryTap(),
                  BCatogryTap(),
                  BCatogryTap(),
                  BCatogryTap(),
                ],
              ))),
    );
  }
}
