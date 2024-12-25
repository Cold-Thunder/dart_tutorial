import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class AuthTypeDes extends StatelessWidget {
  final String texts;

  const AuthTypeDes({required this.texts,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      texts,
      style: TextStyles.skipButtonStyle
          .copyWith(color: AllColors.authTypeDesWhite),
    );
  }
}
