import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/examples/works_with_text/custom_fonts.dart';
import 'package:project1/examples/works_with_text/google_fonts_use.dart';
import 'package:project1/examples/works_with_text/text_use_home.dart';
import 'package:project1/examples/works_with_text/utils/text_styles.dart';

class TextMain extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Text Use',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple,
          // using appbar text style from utils
          titleTextStyle: appBarTitleStyle,
          iconTheme: const IconThemeData(
            color: Colors.white
          )
        )
      ),
      routes: {
          '/': (context)=>TextUseHome(),
         '/custom_fonts' : (context)=>CustomFonts(),
        '/google_fonts': (context)=>GoogleFontsUse()
      },
      initialRoute: '/',
    );
  }
}