import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/examples/tabbar_examples/utiles/styles/tabbar_text_styles.dart';
import 'package:project1/examples/tabbar_examples/utiles/texts/tabbar_texts.dart';

class TabBarHome extends StatelessWidget{
  const TabBarHome({super.key});
  @override
  Widget build(BuildContext context){
    return SizedBox(
        child: Center(
          child: Text(
            TabBarTexts.home,
            style: TabBarAllTextStyles.tabbarHeadingStyle
          )
        )
    );
  }
}