import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/common/custom_shapes/Containers/circular_container.dart';
import 'package:luxfashion_app/features/shop/controllers/home_controller.dart';
import 'package:luxfashion_app/utils/constants/color.dart';

import '../../../../../common/widgets/images/roundedimage.dart';
import '../../../../../utils/constants/size.dart';

class BPromoSilder extends StatelessWidget {
  const BPromoSilder({Key? key, required this.banners}) : super(key: key);

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
            items: banners
                .map(
                  (url) => BRoundedimage(
                    imageUrl: url,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, reason) =>
                  controller.updatePageIndector(index),
            )),
        const SizedBox(
          height: BSize.spacebetweenItem / 2,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  BCircularContainer(
                    margin: const EdgeInsets.only(right: 5),
                    height:
                        controller.carousalCurrentIndex.value == i ? 13 : 11,
                    width: controller.carousalCurrentIndex.value == i ? 13 : 11,
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? BColors.primary
                        : BColors.grey,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
