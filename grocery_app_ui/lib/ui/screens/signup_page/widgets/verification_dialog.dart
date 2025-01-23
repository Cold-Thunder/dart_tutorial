import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/screens/signup_page/widgets/pin_validator.dart';
import 'package:grocery_app_ui/ui/widgets/elevated_button_design.dart';

class VerificationDialog extends StatefulWidget {
  final Function nextDialogFunc;

  const VerificationDialog({required this.nextDialogFunc, super.key});

  @override
  State<VerificationDialog> createState() => _VerificationDialogState();
}

class _VerificationDialogState extends State<VerificationDialog> {
  final TextEditingController digitOne = TextEditingController();
  final TextEditingController digitTwo = TextEditingController();
  final TextEditingController digitThree = TextEditingController();
  final TextEditingController digitFour = TextEditingController();

  final double radius = 20;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Center(
        child: Material(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 317,
            width: width * 0.9,
            decoration: BoxDecoration(
                color: AllColors.white,
                borderRadius: BorderRadius.circular(radius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(AllTexts.enterOtp,
                    style: AllTextStyles.onboardHeadingStyle
                        .copyWith(fontSize: 20)),
                const SizedBox(height: 8),
                SizedBox(
                  width: width * 0.7,
                  child: Text('${AllTexts.codeSend} ${AllTexts.emailAddress}',
                      style: AllTextStyles.onboardDesStyle,
                      textAlign: TextAlign.center),
                ),
                const SizedBox(height: 20),
                PinValidator(
                    digitOne: digitOne,
                    digitTwo: digitTwo,
                    digitThree: digitThree,
                    digitFour: digitFour),
                Spacer(),
                ElevatedButtonDesign(title: AllTexts.verify, func: widget.nextDialogFunc,),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: "${AllTexts.dontReceive}?",
                    style: AllTextStyles.onboardDesStyle.copyWith(fontSize: 13),
                    children: [
                      TextSpan(
                        text: " ${AllTexts.resend} (${AllTexts.time}s)",
                        style:
                            AllTextStyles.skipTextStyle.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
