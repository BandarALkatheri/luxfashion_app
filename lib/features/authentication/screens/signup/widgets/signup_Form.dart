import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/features/authentication/screens/signup/verify_email.dart';
import 'package:luxfashion_app/features/authentication/screens/signup/widgets/terms_of_condation.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';

class BSignUpForm extends StatelessWidget {
  const BSignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        // full Name
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person), labelText: BTexts.firstName),
        ),
        const SizedBox(
          height: BSize.spacebetweenInputFields,
        ),

        // user Name
        TextFormField(
          decoration: const InputDecoration(
              labelText: BTexts.username, prefixIcon: Icon(Icons.person_2)),
        ),
        const SizedBox(
          height: BSize.spacebetweenInputFields,
        ),

        //email
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email), labelText: BTexts.email),
        ),
        const SizedBox(
          height: BSize.spacebetweenInputFields,
        ),
        //phone number
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.phone),
            labelText: BTexts.phoneNo,
          ),
        ),
        const SizedBox(
          height: BSize.spacebetweenInputFields,
        ),
        // password

        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: BTexts.password,
              suffixIcon: Icon(Icons.remove_red_eye)),
        ),

        const SizedBox(
          height: BSize.spacebetweenSections,
        ),

        const BTermsOfCondation(),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.to(const VerifyEmailScreen());
            },
            child: const Text(BTexts.createAccount),
          ),
        ),
        const SizedBox(
          height: BSize.spacebetweenSections,
        ),
      ],
    ));
  }
}
