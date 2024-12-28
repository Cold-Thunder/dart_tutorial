import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class HeadingWidget extends StatelessWidget{
  final String title;
  const HeadingWidget({required this.title, super.key});
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: width,
      child: Text(
        title,
        style: TextStyles.headingTextStyle
      ),
    );
  }
}