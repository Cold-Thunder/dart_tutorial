import 'package:flutter/cupertino.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/texts/ass2_ui1_texts.dart';
import 'package:project1/projects/ui_design_two/utiles/texts_styles/text_styles.dart';

class Heading extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      width: width,
      height: 38,
      alignment: Alignment.centerLeft,
      child: Text(
        Ass2UI1Texts.messagesHeading,
        style: headingTextStyle,
      )
    );
  }
}