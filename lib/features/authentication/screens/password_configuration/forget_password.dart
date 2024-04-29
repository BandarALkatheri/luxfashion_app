import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  get onPress => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(BSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title , subtitle

            Text(
              BTexts.forgetPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: BSize.spacebetweenItem,
            ),

            Text(
              BTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),

            const SizedBox(
              height: BSize.spacebetweenSections,
            ),

            //Form email

            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: BTexts.email,
              ),
            ),

            const SizedBox(
              height: BSize.spacebetweenSections,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(RestPasswordScreen());
                },
                child: const Text(BTexts.submit),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
