import 'package:assignment7_ui/screens/location_access.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/auth_type_texts.dart';
import 'package:assignment7_ui/widgets/auth_type_widgets/auth_type_des.dart';
import 'package:assignment7_ui/widgets/auth_type_widgets/auth_type_heading.dart';
import 'package:assignment7_ui/widgets/auth_type_widgets/auths_background.dart';
import 'package:assignment7_ui/widgets/auth_type_widgets/input_field_title.dart';
import 'package:assignment7_ui/widgets/auth_type_widgets/pin_validator.dart';
import 'package:assignment7_ui/widgets/back_icon.dart';
import 'package:assignment7_ui/widgets/elevated_button_design.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  final TextEditingController _digitOne = TextEditingController();
  final TextEditingController _digitTwo = TextEditingController();
  final TextEditingController _digitThree = TextEditingController();
  final TextEditingController _digitFour = TextEditingController();

  final String email;

  VerificationScreen({required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AllColors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // for background images
          AuthsBackground(),
          // back icon
          Container(
              alignment: Alignment.centerLeft, width: width, child: BackIcon()),
          const SizedBox(
            height: 30,
          ),
          // heading
          AuthTypeHeading(title: AuthTypeTexts.verification),
          // description
          AuthTypeDes(texts: AuthTypeTexts.veriDes),
          Text(
            email,
            style: TextStyles.skipButtonStyle.copyWith(
                color: AllColors.authTypeDesWhite, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: width,
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
                  // title section done
                  Row(
                    children: [
                      InputFieldTitle(title: AuthTypeTexts.code),
                      Spacer(),
                      // resend text
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1,
                                      color: AllColors.inputTextBlack))),
                          child: Text(
                            AuthTypeTexts.resend,
                            style: TextStyles.elevatedButtonStyle
                                .copyWith(color: AllColors.inputTextBlack),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      InputFieldTitle(title: AuthTypeTexts.in50Sec),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // pin input section
                  PinValidator(
                    digitOne: _digitOne,
                    digitTwo: _digitTwo,
                    digitThree: _digitThree,
                    digitFour: _digitFour,
                  ),
                  const SizedBox(height: 20),
                  // verify button
                  SizedBox(
                    width: width,
                    child: ElevatedButtonDesign(title: AuthTypeTexts.verify,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
