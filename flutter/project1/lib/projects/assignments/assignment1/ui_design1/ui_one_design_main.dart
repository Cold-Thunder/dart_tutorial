import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/home_page_for_ui_one.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/texts/ass_ui1_texts.dart';

class UIOneDesignMain extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: AssUi1Texts.appTitle,
       debugShowCheckedModeBanner: false,
       theme: ThemeData(

       ),
      home: HomePageForUIOne()
    );
  }
}