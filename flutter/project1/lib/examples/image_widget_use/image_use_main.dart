import 'package:flutter/material.dart';
import 'package:project1/examples/image_widget_use/image_use_home.dart';
import 'package:project1/examples/image_widget_use/texts.dart';
import 'package:project1/examples/image_widget_use/text_styles.dart';

class ImageUseMain extends StatelessWidget{
  const ImageUseMain({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: ImageTexts.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: appBarTitleStyle,
          backgroundColor: Colors.purple,
          iconTheme: const IconThemeData(
            color: Colors.white
          )
        )
      ),
      home: ImageUseHome()
    );
  }
}