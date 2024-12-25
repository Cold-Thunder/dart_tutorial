import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class InputFieldTitle extends StatelessWidget{
  final String title;
  const InputFieldTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context){
    return Text(
      title,
      style: TextStyles.inputTitleStyle
    );
  }
}