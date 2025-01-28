import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/location_access_screen/location_access.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/auth_type_des.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/auth_type_heading.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/auths_background.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/input_field_title.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/text_input_field.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController _nameCont = TextEditingController();
  final TextEditingController _emailCont = TextEditingController();
  final TextEditingController _passCont = TextEditingController();
  final TextEditingController _retypeCont = TextEditingController();
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AllColors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          height: height < 812 ? 812 : height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AuthsBackground(),
              // background section
              Container(
                alignment: Alignment.centerLeft,
                width: width,
                child: BackIcon(),
              ),
              const SizedBox(
                height: 30,
              ),
              // heading
              AuthTypeHeading(title: AllTexts.signUp),
              // description
              AuthTypeDes(texts: AllTexts.signUpDes),
              const SizedBox(height: 40),
              // bottom form section
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: AllColors.appbarWhite,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),

                      // name section
                      InputFieldTitle(title: AllTexts.name),
                      const SizedBox(height: 5),
                      TextInputField(
                          controller: _nameCont,
                          hintText: AllTexts.nameHint),
                      const SizedBox(height: 10),
                      // email section
                      InputFieldTitle(title: AllTexts.email),
                      const SizedBox(height: 5),
                      TextInputField(
                          controller: _emailCont,
                          hintText: AllTexts.emailAdd),
                      // pass section
                      InputFieldTitle(title: AllTexts.password),
                      const SizedBox(height: 5),
                      TextInputField(
                          controller: _passCont,
                          hintText: AllTexts.passHint,
                        secure: true
                      ),
                      const SizedBox(height: 10),
                      // pass retype section
                      InputFieldTitle(title: AllTexts.retype),
                      const SizedBox(height: 5),
                      TextInputField(
                          controller: _retypeCont,
                          hintText: AllTexts.passHint,
                        secure: true
                      ),
                      const SizedBox(height: 47),
                      SizedBox(
                        width: width,
                        child: ElevatedButtonDesign(title:AllTexts.signUp, screen: LocationAccessScreen(),)
                      )
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
