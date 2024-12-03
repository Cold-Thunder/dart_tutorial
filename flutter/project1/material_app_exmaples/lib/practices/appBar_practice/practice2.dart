import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_app_exmaples/examples/flutter_theme_examples/appBarTheme/appBar_home.dart';

class AppBarPractice2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'AppBar Practice2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.purple,
          titleTextStyle: TextStyle(
            fontSize: 25,
            color: Colors.white
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(35)
            )
          ),
          iconTheme: IconThemeData(
            color: Colors.white
          )
        )
      ),
      home: AppBarHome(appBarTitle: 'AppBar Practice2')
    );
  }
}