import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/components/elevated_button_design.dart';
import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_texts.dart';
import '../../../core/utiles/styles/all_text_styles.dart';
import 'outline_cancel_button.dart';

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
                          ElevatedButtonDesign(title: AllTexts.next, func: nextDialogFunc, givenWidth: width*0.374, givenHeight: 50)
                        ],
                      )
                  ],
                )
            )
        )
    ));
  }
}
