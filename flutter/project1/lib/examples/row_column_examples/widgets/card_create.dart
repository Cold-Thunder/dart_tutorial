import 'package:flutter/cupertino.dart';
import 'package:project1/examples/row_column_examples/my_colors.dart';

class CardCreate extends StatelessWidget{
  final Color _fillColor;

  const CardCreate({required Color fillColor, super.key}): _fillColor = fillColor;

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.all(5),
        height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: _fillColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: lowBlack,
            offset: const Offset(1,1),
            spreadRadius: 3,
            blurRadius: 3
          )
        ]
      )
    );
  }
}