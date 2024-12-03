import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_app_exmaples/examples/flutter_theme_examples/appBarTheme/appBar_home.dart';

class Practice1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       title: 'Practice1',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.blue,
            titleTextStyle: TextStyle(
              fontSize: 26,
              color: Colors.white
            ),
            iconTheme: IconThemeData(
              color: Colors.white
            )
          )
        ),
      home: AppBarHome(appBarTitle: 'Practice1')
    );
  }
}