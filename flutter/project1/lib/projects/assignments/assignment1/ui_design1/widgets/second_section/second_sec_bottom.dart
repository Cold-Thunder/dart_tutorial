import 'package:flutter/cupertino.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/text_styles.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/texts/ass_ui1_texts.dart';

class SecondSecBottom extends StatelessWidget{
  const SecondSecBottom({super.key});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      child: Row(
        children: [
          Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                color: arrowBackColor,
                shape: BoxShape.circle,
              )
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    child: Text(AssUi1Texts.ongoing,
                        style: transportTopDes
                    )
                ),
                SizedBox(
                  child: Text(AssUi1Texts.date, style: transportBottomDes)
                )
              ]
            )
          )
        ],
      )
    );
  }
}