import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class AddCardTitle extends StatelessWidget{
  final String title;

  const AddCardTitle({required this.title, super.key});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      child: Text(title, style: TextStyles.hintTextStyle)
    );
  }
}