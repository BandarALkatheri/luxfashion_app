import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:luxfashion_app/features/authentication/screens/signup/signup.dart';
import 'package:luxfashion_app/navigation_menu.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';

class BLoginForm extends StatelessWidget {
  const BLoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: BSize.spacebetweenSections / 2),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: BTexts.email),
            ),
            const SizedBox(
              height: BSize.spacebetweenInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: BTexts.password,
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            const SizedBox(
              height: BSize.spacebetweenInputFields / 5,
            ),
            const SizedBox(
              height: BSize.spacebetweenSections,
            ),
            //remember Me, forget Password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //remember Me
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(BTexts.rememberMe),
                  ],
                ),
                //forget Password

                TextButton(
                    onPressed: () {
                      Get.to(const ForgetPasswordScreen());
                    },
                    child: const Text(BTexts.forgetPassword))
              ],
            ),

            //sing up button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const NavigationMenu());
                },
                child: const Text(BTexts.signIn),
              ),
            ),
            const SizedBox(
              height: BSize.spacebetweenInputFields,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(const SignupScreen());
                  },
                  child: const Text(BTexts.createAccount)),
            ),

            const SizedBox(
              height: BSize.spacebetweenSections,
            ),
          ],
        ),
      ),
    );
  }
}
