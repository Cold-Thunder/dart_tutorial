import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/examples/row_column_examples/text_styles.dart';
import 'package:project1/projects/ui_design_two/ui_design_two_home.dart';
import 'package:project1/projects/ui_design_two/utiles/colors/colors.dart';
import 'package:project1/projects/ui_design_two/utiles/texts/my_texts.dart';

class UiDesignMainTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: MyTexts.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: appBarTextStyle,
          backgroundColor: appBarColor,
          centerTitle: true
        )
      ),
      home: UIDesignTwoHome()
    );
  }
}