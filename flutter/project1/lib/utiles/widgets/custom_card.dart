import 'package:flutter/cupertino.dart';
import 'package:project1/utiles/colors/my_colors.dart';
import 'package:project1/utiles/textStyles/my_text_styles.dart';
import 'package:project1/utiles/texts/my_text.dart';

class CustomCard extends StatelessWidget{
  const CustomCard({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      height: 250,
      width: 180,
      color: MyColors.cardColor,
      child: Column(
        children: [
          SizedBox(
            child: Text(MyText.cardHeading, style: headingStyle)
          ),
          SizedBox(
            child: Text(MyText.cardSub, style: cardSub)
          )
        ]
      )
    );
  }
}