import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/styles/text_styels.dart';

class TopItemsCard extends StatelessWidget{
  final Map<String, dynamic> _cardDatas;

  const TopItemsCard({required Map<String, dynamic> cardData, super.key}):
  _cardDatas = cardData;
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){},
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      padding: const EdgeInsets.all(15),
      height: 110,
      width: 130,
      decoration: BoxDecoration(
        color: topItemsColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: topItemsColorShadow,
            offset: const Offset(0,2),
            spreadRadius: 2,
            blurRadius: 6
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // upper icon
        Icon(
          _cardDatas['icon'],
          size: 35,
          color: myWhite
        ),
          // card title
          Text(_cardDatas['title'],
              style: topItemTextStyle)
          ]
      )
    ));
  }
}