import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class AppBarTitleWidget extends StatelessWidget {
  final String title;

  const AppBarTitleWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyles.appBarTitleStyle
    );
  }
}
