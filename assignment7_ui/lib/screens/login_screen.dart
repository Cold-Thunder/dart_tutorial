import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/auth_type_texts.dart';
import 'package:assignment7_ui/widgets/auth_type_heading.dart';
import 'package:assignment7_ui/widgets/input_field_title.dart';
import 'package:assignment7_ui/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

class LoginScren extends StatelessWidget {
  final TextEditingController _emailCont = TextEditingController();
  final TextEditingController _passCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AllColors.black,
        body: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // heading
              AuthTypeHeading(title: AuthTypeTexts.login),
              // des section
              Text(
                AuthTypeTexts.loginDes,
                style: TextStyles.skipButtonStyle
                    .copyWith(color: AllColors.appbarWhite),
              ),
              SizedBox(height: 40),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: width,
                  decoration: BoxDecoration(
                    color: AllColors.appbarWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputFieldTitle(title: AuthTypeTexts.email),
                      const SizedBox(height: 5),
                      TextInputField(controller: _emailCont, hintText: AuthTypeTexts.emailAdd)
                    ]
                  )
                ),
            ],
          ),
        ),
      ),
    );
  }
}
