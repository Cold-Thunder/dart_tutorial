import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:project1/examples/tabbar_examples/utiles/styles/tabbar_text_styles.dart';
import 'package:project1/examples/tabbar_examples/utiles/texts/tabbar_texts.dart';

class TabbarMenuScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            TabBarTexts.menu,
            style: TabBarAllTextStyles.tabbarHeadingStyle
          )
        ]
      )
    );
  }
}