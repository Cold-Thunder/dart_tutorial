import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/personal_profile_text.dart';
import 'package:flutter/cupertino.dart';

class AppBarTitleWidget extends StatelessWidget {
  final String title;

  const AppBarTitleWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(PersonalProfileText.personalProAppBar,
        style: TextStyles.appBarTitleStyle
    );
  }
}
