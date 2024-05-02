import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/appBar/appbar.dart';
import 'package:luxfashion_app/utils/constants/size.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const BAppBar(showBackArrow: true, title: Text('Add new Address')),

      //body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(BSize.defaultSpace),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person), label: Text('Name'))),
                const SizedBox(height: BSize.spacebetweenInputFields),
                TextFormField(
                    decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  label: Text('phone Number'),
                )),
                const SizedBox(height: BSize.spacebetweenInputFields),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.house),
                                label: Text('Stret')))),
                    const SizedBox(width: BSize.spacebetweenInputFields),
                    Expanded(
                        child: TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.code),
                                label: Text('Postal Code')))),
                  ],
                ),
                const SizedBox(height: BSize.spacebetweenInputFields),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.home_rounded),
                                label: Text('City')))),
                    const SizedBox(width: BSize.spacebetweenInputFields),
                    Expanded(
                        child: TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.local_activity),
                                label: Text('State')))),
                  ],
                ),
                const SizedBox(height: BSize.spacebetweenInputFields),
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.four_g_plus_mobiledata),
                        label: Text('Country'))),
                const SizedBox(height: BSize.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('save')),
                )
              ],
            ))),
      ),
    );
  }
}
