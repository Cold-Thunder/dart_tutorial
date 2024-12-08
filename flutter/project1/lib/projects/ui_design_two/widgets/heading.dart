import 'package:flutter/cupertino.dart';
import 'package:project1/projects/ui_design_two/utiles/texts_styles/text_styles.dart';

class Heading extends StatelessWidget{
  final String _headingText;
  const Heading({required String headingText, super.key})
      :_headingText = headingText;
  @override
  Widget build(BuildContext context){
    return Container(
      margin:const EdgeInsets.only(top: 20, bottom: 20),
      child: Text(_headingText, style: headingTextStyle)
    );
  }
}