import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/home_screen_texts.dart';
import 'package:flutter/cupertino.dart';

class HomeTopTitle extends StatelessWidget {
  const HomeTopTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: RichText(
        text: TextSpan(
          text: HomeScreenText.greeting,
          style: TextStyles.onboardDesStyle,
          children: [
            TextSpan(
              text: HomeScreenText.afternoon,
              style: TextStyles.pinTextStyle
            )
          ]
        )
      )
    );
  }
}
