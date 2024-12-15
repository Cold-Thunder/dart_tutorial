import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/ass2_ui1_home.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/texts/ass2_ui1_texts.dart';

class Ass2UI1Main extends StatelessWidget{
  const Ass2UI1Main({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: Ass2UI1Texts.title,
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Ass2UI1AllColors.appBarColor,
           iconTheme: IconThemeData(
             color: Ass2UI1AllColors.myBlack,
           )
        )
      ),
      home: Ass2UI1Home()
    );
  }
}