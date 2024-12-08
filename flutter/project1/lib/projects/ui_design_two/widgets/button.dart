import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_two/utiles/colors/colors.dart';
import 'package:project1/projects/ui_design_two/utiles/texts_styles/text_styles.dart';

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 35,
      width: 120,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: appBarColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
          onPressed: (){
            print('print booking');
          },
          child: Text('Book Again', style: appBarTitleStyle.copyWith(fontSize: 16)))
    );
  }
}