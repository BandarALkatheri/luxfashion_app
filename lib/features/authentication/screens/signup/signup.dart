import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/widgets_login_signup/form_divider.dart';
import 'package:luxfashion_app/common/widgets_login_signup/social_button.dart';
import 'package:luxfashion_app/features/authentication/screens/signup/widgets/signup_Form.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                //title
                Text(BTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(
                  height: BSize.spacebetweenInputFields,
                ),
                //form

                const BSignUpForm(),

                const BFormDivider(dividerText: BTexts.signupTitle),
                const SizedBox(
                  height: BSize.spacebetweenSections,
                ),
                const BSoicalButton(),
              ],
            ),
          ),
        ));
  }
}
