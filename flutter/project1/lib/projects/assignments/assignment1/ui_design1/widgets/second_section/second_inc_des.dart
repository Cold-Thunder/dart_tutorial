import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/text_styles.dart';

class SecondIncDes extends StatelessWidget{
  final String _change;

  const SecondIncDes({required String change,
    super.key}):
      _change = change;
  @override
  Widget build(BuildContext context){
    return CircleAvatar(
      radius: 7,
        backgroundColor: myGreen,
        child: Text(_change,style: greetingTextStyle.copyWith(
          fontSize: 9
        ))
    );
  }
}