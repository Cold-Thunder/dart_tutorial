import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/modules/items_card_information.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/styles/text_styles.dart';

class ListItemCard extends StatelessWidget{
  final ItemsCardInformation _inform;

  const ListItemCard({required ItemsCardInformation inform, super.key}):
      _inform = inform;


  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        if(kDebugMode) print('Items clicked');
      },
    child:
      Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(15),
      height: 110,
      decoration: BoxDecoration(
        color: Ass2UI1AllColors.transparentWhite,
        borderRadius: BorderRadius.circular(33)
      ),
      child: Flex(
        direction:Axis.horizontal,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(3),
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                border: Border.all(
                  color: Ass2UI1AllColors.myBlack,
                  width: 1
                )
              ),
              child: CircleAvatar(
                radius: 31,
                backgroundImage: AssetImage(
                  _inform.image,
                )
              )
            )
          ),
          Flexible(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(left: 20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     alignment: Alignment.topLeft,
                     height: 30,
                   child: Text(_inform.title, style: cardHeadingStyle)
                   ),
                   SizedBox(
                     height: 50,
                     child: Text(_inform.subtitle, style: cardHeadingStyle.copyWith(
                     color: Ass2UI1AllColors.cardSubtitleGrey
                   )))
                 ]
               )
            )
          )
        ]
      )
    ));
  }
}