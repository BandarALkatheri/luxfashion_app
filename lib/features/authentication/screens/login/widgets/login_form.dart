import 'package:luxfashion_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:luxfashion_app/features/authentication/screens/signup/signup.dart';
import 'package:luxfashion_app/navigation_menu.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSize.spacebetweenSections / 2),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: TTexts.email),
            ),
            const SizedBox(
              height: TSize.spacebetweenInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            const SizedBox(
              height: TSize.spacebetweenInputFields / 5,
            ),
            const SizedBox(
              height: TSize.spacebetweenSections,
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
                    const Text(TTexts.rememberMe),
                  ],
                ),
                //forget Password

                TextButton(
                    onPressed: () {
                      Get.to(const ForgetPasswordScreen());
                      print('dd');
                    },
                    child: const Text(TTexts.forgetPassword))
              ],
            ),

            //sing up button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const NavigationMenu());
                },
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(
              height: TSize.spacebetweenInputFields,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(const SignupScreen());
                  },
                  child: const Text(TTexts.createAccount)),
            ),

            const SizedBox(
              height: TSize.spacebetweenSections,
            ),
          ],
        ),
      ),
    );
  }
}
