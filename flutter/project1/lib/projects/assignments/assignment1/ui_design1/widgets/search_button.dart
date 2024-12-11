import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/text_styles.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/texts/ass_ui1_texts.dart';

class SearchButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 55,
      width: width * 0.6,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(1,1),
            color: Colors.black12,
            spreadRadius: 3,
            blurRadius: 10
          )
        ]
      ),
      child:
      ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: arrowBackColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          )
        ),
        child: Text(AssUi1Texts.search.toUpperCase(), style: searchText)
    ));
  }
}