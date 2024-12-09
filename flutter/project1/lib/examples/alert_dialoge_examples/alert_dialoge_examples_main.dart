import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/examples/alert_dialoge_examples/alert_dialog_home.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/colors_for_alert.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/styles_alert.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/texts.dart';

class AlertDialogExamplesMain extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: AlertTexts.appBarTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: appBarTextStyleAlt,
          backgroundColor: appBarColorAlt
        )
      ),
      home: AlertDialogHome()
    );
  }
}