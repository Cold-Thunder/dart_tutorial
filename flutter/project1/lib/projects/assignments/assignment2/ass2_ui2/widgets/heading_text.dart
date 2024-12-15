import 'package:flutter/cupertino.dart';
import 'package:project1/examples/image_widget_use/text_styles.dart';

class HeadingText extends StatelessWidget{
  final String _heading;
  const HeadingText({required String heading, super.key})
    :_heading = heading;
  @override
  Widget build(BuildContext context){
    return Text(
      _heading,
      style: headingTextStyle
    );
  }
}