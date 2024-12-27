import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class InputFieldTitle extends StatelessWidget{
  final String title;
  final double? fontSize;
  const InputFieldTitle({required this.title, this.fontSize, super.key});

  @override
  Widget build(BuildContext context){
    return Text(
      title,
      style: TextStyles.inputTitleStyle.copyWith(
        fontSize: fontSize ?? 13
      )
    );
  }
}