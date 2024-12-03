
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_app_exmaples/examples/flutter_theme_examples/appBarTheme/appBar_home.dart';

class FlutterAppBarTheme extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'AppBar Theme',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.red,
            // backgroundColor: Colors.blue,
            elevation: 3,
            shadowColor: Colors.black38,
            // using titleTextStyle
            titleTextStyle: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
            iconTheme: IconThemeData(
              color: Colors.white
            )
          )
        ),
        home: AppBarHome(appBarTitle: 'Flutter AppBar Theme',)
    );
  }
}