import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/on_boarding_texts.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  final Widget screen;

  const SkipButton({required this.screen, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>screen));
      },
      child: Text(OnBoardingTexts.skip, style: TextStyles.skipButtonStyle),
    );
  }
}
