import 'package:flutter/cupertino.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/text_styles.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/texts/ass_ui1_texts.dart';

class HeadingTransName extends StatelessWidget{
  const HeadingTransName({super.key});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      child: Text(AssUi1Texts.transport,
        style: transportNameStyle,
      )
    );
  }
}