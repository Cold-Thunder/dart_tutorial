import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/ui1_home.dart';

class UiDesignMain extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'UI Design One',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
           backgroundColor: Colors.white,
           iconTheme: IconThemeData(
             color: Colors.black
           )
        )
      ),
      routes: {
        '/': (context)=> UI1Home()
      }
    );
  }
}