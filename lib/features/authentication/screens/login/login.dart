import 'package:luxfashion_app/common/styles/spacing_styles.dart';
import 'package:luxfashion_app/common/widgets_login_signup/form_divider.dart';
import 'package:luxfashion_app/common/widgets_login_signup/social_button.dart';
import 'package:luxfashion_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:luxfashion_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:luxfashion_app/utils/constants/size.dart';
import 'package:luxfashion_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight / 2,
            child: const Column(
              children: [
                // logo , title ,subtitle

                TLoginHeader(),

                //Form
                TLoginForm(),

                // Divider
                TFormDivider(DividerText: TTexts.orSignUpWith),

                SizedBox(
                  height: TSize.spacebetweenSections,
                ),
                //Foaters
                TSoicalButton(),
              ],
            )),
      ),
    );
  }
}
