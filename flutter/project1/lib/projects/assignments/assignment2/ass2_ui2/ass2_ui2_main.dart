import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/ass2_ui2_home.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/texts/ass2_ui2_all_texts.dart';

class Ass2UI2Main extends StatelessWidget {
  const Ass2UI2Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Ass2UI2AllTexts.title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: AllColors.appBarColor
            )
        ),
      home: Ass2UI2Home()
    );
  }
}
