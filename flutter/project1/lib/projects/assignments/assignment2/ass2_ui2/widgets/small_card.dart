import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/modules/small_card_module.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/styles/ass2_ui2_text_styles.dart';

class SmallCard extends StatelessWidget{
 final SmallCardModule _cardInfo;
 final bool _showBorder;

 const SmallCard({required SmallCardModule cardInfo, required bool showBorder, super.key})
  :_cardInfo = cardInfo, _showBorder = showBorder;

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){},
      child: Container(
      margin:const EdgeInsets.symmetric(horizontal: 10),
          height: 142,
      width: 88,
      child: Column(
        children:[
          Container(
            height:88,
            width: 88,
            padding: const EdgeInsets.all(20)
,            decoration: BoxDecoration(
              color: _cardInfo.backColor,
              borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1,
              color: _showBorder ? AllColors.transparent : AllColors.smallCardBorderGrey
            )
            ),
            child: SvgPicture.asset(_cardInfo.image)
          ),
          const SizedBox(height: 10),
          Expanded(
            child:
          SizedBox(
            width: 88,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_cardInfo.title, style: smallCardHeading),
                Text(_cardInfo.subtitle, style: appBarSubStyle.copyWith(
                  color: AllColors.smallCardColor
                ))
              ]
            )
          ))
        ]
      )
    ));
  }
}