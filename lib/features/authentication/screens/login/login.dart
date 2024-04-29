import 'package:flutter/material.dart';
import 'package:luxfashion_app/common/styles/spacing_styles.dart';
import 'package:luxfashion_app/common/widgets_login_signup/form_divider.dart';
import 'package:luxfashion_app/common/widgets_login_signup/social_button.dart';
import 'package:luxfashion_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:luxfashion_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: BSpacingStyle.paddingWithAppBarHeight / 2,
            child: const Column(
              children: [
                // logo , title ,subtitle

                BLoginHeader(),

                //Form
                BLoginForm(),

                // Divider
                BFormDivider(dividerText: BTexts.orSignUpWith),

                SizedBox(
                  height: BSize.spacebetweenSections,
                ),
                //Foaters
                BSoicalButton(),
              ],
            )),
      ),
    );
  }
}
