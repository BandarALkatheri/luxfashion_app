import 'package:luxfashion_app/features/authentication/screens/signup/verify_email.dart';
import 'package:luxfashion_app/features/authentication/screens/signup/widgets/terms_of_Condation.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
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
              prefixIcon: Icon(Icons.person), labelText: TTexts.firstName),
        ),
        const SizedBox(
          height: TSize.spacebetweenInputFields,
        ),

        // user Name
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Icons.person_2)),
        ),
        const SizedBox(
          height: TSize.spacebetweenInputFields,
        ),

        //email
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email), labelText: TTexts.email),
        ),
        const SizedBox(
          height: TSize.spacebetweenInputFields,
        ),
        //phone number
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.phone),
            labelText: TTexts.phoneNo,
          ),
        ),
        const SizedBox(
          height: TSize.spacebetweenInputFields,
        ),
        // password

        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: TTexts.password,
              suffixIcon: Icon(Icons.remove_red_eye)),
        ),

        const SizedBox(
          height: TSize.spacebetweenSections,
        ),

        const TTermsOfCondation(),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.to(const VerifyEmailScreen());
            },
            child: const Text(TTexts.createAccount),
          ),
        ),
        const SizedBox(
          height: TSize.spacebetweenSections,
        ),
      ],
    ));
  }
}
