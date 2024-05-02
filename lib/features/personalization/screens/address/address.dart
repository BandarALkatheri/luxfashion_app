import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/features/personalization/screens/address/add_new_address.dart';
import 'package:luxfashion_app/features/personalization/screens/address/widgets/single_address.dart';
import 'package:luxfashion_app/utils/constants/color.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // FloatingActionButton to add new Adresses

      floatingActionButton: FloatingActionButton(
          backgroundColor: BColors.primary,
          onPressed: () {
            print('object');
            Get.to(const AddNewAddressScreen());
          },
          child: const Icon(Icons.add, color: BColors.white)),

      //Appbar
      appBar: BAppBar(
          showBackArrow: true,
          title: Text('Addresses',
              style: Theme.of(context).textTheme.headlineSmall)),

      //body

      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSize.defaultSpace),
          child: Column(children: [
            BSingleAddredd(selectedAdress: false),
            BSingleAddredd(selectedAdress: true),
          ]),
        ),
      ),
    );
  }
}
