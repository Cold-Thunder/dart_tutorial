import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/assone_ui_design_two.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/styles/text_styels.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/texts/simple_texts.dart';

class AssOneUiDesignTwoMain extends StatelessWidget{
  const AssOneUiDesignTwoMain({super.key});
   @override
  Widget build(BuildContext context){
     return MaterialApp(
       title: SimpleTexts.appTitle,
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         appBarTheme: AppBarTheme(
           titleTextStyle: assOneAppBarTitleStyle,
           backgroundColor: myWhite,
         ),
       ),
        home: AssOneUIDesignTwo()

     );
   }
}