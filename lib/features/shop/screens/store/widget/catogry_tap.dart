import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/layouts/grid_layout.dart';
import 'package:luxfashion_app/common/widgets/products/products_carts/products_card_virtical.dart';
import 'package:luxfashion_app/common/text/section_heading.dart';
import 'package:luxfashion_app/common/widgets/brands/brand_show_case.dart';

import '../../../../../utils/constants/size.dart';

class BCatogryTap extends StatelessWidget {
  const BCatogryTap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(BSize.defaultSpace),
          child: Column(
            children: [
              // Brands

              const BBrandShowCase(images: [
                'assets/logo/logo.png',
                'assets/logo/facebook.png',
                'assets/logo/google.png'
              ]),
              const SizedBox(
                height: BSize.spacebetweenItem,
              ),
              // products
              BSectionHeading(
                title: 'You might like ',
                onPressed: () {},
              ),
              const SizedBox(
                height: BSize.spacebetweenItem,
              ),

              BGridViewlayout(
                itemCount: 4,
                itemBuilder: (p0, p1) {
                  return const BProductCardVirtical();
                },
              ),
              const SizedBox(
                height: BSize.spacebetweenSections,
              ),
            ],
          ),
        )
      ],
    );
  }
}
