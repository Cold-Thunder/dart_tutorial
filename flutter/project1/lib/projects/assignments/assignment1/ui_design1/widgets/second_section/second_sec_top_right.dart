import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/text_styles.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/texts/ass_ui1_texts.dart';

class SecondSecTopRight extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(AssUi1Texts.type.toUpperCase(),
              style: transportTopDes
          ),
          InkWell(
              onTap: (){},
              child: Text(AssUi1Texts.type.toUpperCase(),
              style: greetingTextStyle.copyWith(
                color: arrowBackColor,
                fontSize: 26
              )
              )
          )
        ]
      )
    );
  }
}