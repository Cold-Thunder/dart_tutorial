import 'package:flutter/cupertino.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/text_styles.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/texts/ass_ui1_texts.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/heading_section/heading_trans_name.dart';

class HeadingTitle extends StatelessWidget{
  const HeadingTitle({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(37),
      child: Column(
        children: [
          SizedBox(
            child: Text(
              'Hi_${AssUi1Texts.greetingName}',
              style: greetingTextStyle
            )
          ),
          HeadingTransName()
        ]
      )
    );
  }
}