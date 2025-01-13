import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/images/all_images.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:assignment8_ui/ui/screens/login_screen/widgets/login_button_style.dart';
import 'package:assignment8_ui/ui/screens/login_screen/widgets/login_media_button.dart';
import 'package:assignment8_ui/ui/screens/login_screen/widgets/login_top_icon.dart';
import 'package:assignment8_ui/ui/screens/login_screen/widgets/text_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
 LoginScreen({super.key});
  final GlobalKey<FormState> _formGlobalKey = GlobalKey();
  final TextEditingController _emailCont = TextEditingController();
  final TextEditingController _passCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              width: width,
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  LoginTopIcon(),
                  const SizedBox(height: 10),
                  // heading
                  Text(
                    AllTexts.chatRoom,
                    style: TextStyles.headingTextStyle
                  ),
                  const SizedBox(height: 35),
                  Text(
                      AllTexts.logInAccount,
                      style: TextStyles.subTextStyle
                  ),
                  const SizedBox(height: 20),
                  // log in from
                  Form(
                    key: _formGlobalKey,
                      child: Column(
                        children: [
                          TextFieldWidget(controller: _emailCont, hintText: AllTexts.email, iconData: Icons.email_outlined),
                          TextFieldWidget(controller: _passCont, hintText: AllTexts.password, iconData: Icons.lock_outline_rounded, secure: true,)
                        ],
                      )
                  ),
                  // forget password
                  InkWell(
                    onTap: (){},
                    splashColor: AllColors.transparent,
                    highlightColor: AllColors.transparent,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        AllTexts.forget,
                        style: TextStyles.smallHeadingTextStyle
                      )
                    ),
                  ),
                  const SizedBox(height: 20),
                  // log in button
                  LoginButtonStyle(),
                  const SizedBox(height: 20),
                  Text(AllTexts.or, style: TextStyles.subTextStyle),
                  const SizedBox(height: 20),
                  LoginMediaButton(imageSvg: AllImages.googleSvgImage, title: AllTexts.google,),
                  const SizedBox(height: 30),
                  // sign up button
                  RichText(
                    text: TextSpan(
                      text: AllTexts.dontHave,
                      style: TextStyles.smallHeadingTextStyle,
                      children: [
                        TextSpan(
                          text: " ${AllTexts.signUp}",
                          style: TextStyles.smallHeadingTextStyle.copyWith(
                            color: AllColors.mainGreen
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap =(){debugPrint('adadad');}
                        )
                      ]
                    )
                  )
                ],
              ),
            )
          ),
        )
    );
  }
}
