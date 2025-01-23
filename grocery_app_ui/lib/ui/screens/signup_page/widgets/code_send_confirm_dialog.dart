import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/screens/signup_page/widgets/outline_cancel_button.dart';
import 'package:grocery_app_ui/ui/widgets/elevated_button_design.dart';

class CodeSendConfirmDialog extends StatelessWidget {
  final Function nextDialogFunc;
  const CodeSendConfirmDialog({required this.nextDialogFunc, super.key});
  final double radius = 20;

  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Center(
        child: Material(
          borderRadius: BorderRadius.circular(radius),
            child: Container(
              padding: const EdgeInsets.all(20),
                height: 263,
                width:width*0.9,
                decoration: BoxDecoration(
                    color: AllColors.white,
                    borderRadius: BorderRadius.circular(radius)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AllTexts.verifyEmail,
                      style: AllTextStyles.socialLogBtnStyle
                    ),
                      const SizedBox(height: 10),
                      Text(
                        AllTexts.emailAddress,
                        style: AllTextStyles.onboardHeadingStyle
                      ),
                    const SizedBox(height: 15),

                      SizedBox(
                        width: width*0.7,
                        child: Text(
                          AllTexts.verDes,
                          style: AllTextStyles.onboardDesStyle,
                          textAlign: TextAlign.center
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            OutlineCancelButton(),
                          ElevatedButtonDesign(title: AllTexts.next, func: nextDialogFunc, givenWidth: width*0.374, height: 50)
                        ],
                      )
                  ],
                )
            )
        )
    ));
  }
}
