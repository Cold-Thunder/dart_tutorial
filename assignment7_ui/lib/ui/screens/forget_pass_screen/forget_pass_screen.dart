import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/verification_screens/verification_screen.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/auth_type_des.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/auth_type_heading.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/auths_background.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/input_field_title.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/text_input_field.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:flutter/material.dart';

class ForgetPassScreen extends StatelessWidget {
  ForgetPassScreen({super.key});

  final TextEditingController _emailCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AllColors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          height: height > 470 ? height : 470,
          child:  Column(
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
              AuthTypeHeading(title: AllTexts.forget),
              // description
              AuthTypeDes(texts: AllTexts.forgetDes),
              const SizedBox(height: 40),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: AllColors.appbarWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputFieldTitle(title: AllTexts.email),
                      const SizedBox(height: 10),
                      TextInputField(
                          controller: _emailCont, hintText: AllTexts.email),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 62,
                        width: width,
                        child: ElevatedButtonDesign(
                          title: AllTexts.send,
                          screen: VerificationScreen(
                            email: _emailCont.text.toString(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
