import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_app_exmaples/examples/flutter_theme_examples/flutter_button_theme/buttom_theme_home.dart';
import 'package:material_app_exmaples/practices/appBar_practice/practice2.dart';

class ButtonThemeExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Button Theme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Colors.orange,
          titleTextStyle: TextStyle(fontSize: 24, color: Colors.white),
          iconTheme: IconThemeData(
            color: Colors.white
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
           style: ElevatedButton.styleFrom(
             textStyle: TextStyle(
               fontSize: 22
             ),
             // foregroundColor sets the color of the text of the button
             foregroundColor: Colors.white,
             backgroundColor: Colors.purple,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20),
                 bottomRight: Radius.circular(20)
               )
             )
           )
        ),
      ),
      home: ButtonThemeHome()
    );
  }
}