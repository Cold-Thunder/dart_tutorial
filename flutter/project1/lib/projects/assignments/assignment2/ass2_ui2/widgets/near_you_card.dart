import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/modules/large_card_module.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/images/first_page_images.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/styles/ass2_ui2_text_styles.dart';

class NearYouCard extends StatelessWidget{
  final LargeCardModule _cardInfo;

  const NearYouCard({required LargeCardModule cardInfo, super.key}):
      _cardInfo = cardInfo;

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8)
            ),
            child: Image.asset(
                _cardInfo.image,
              fit: BoxFit.cover
            )
          ),
          const SizedBox(height: 15),
          // title section
          Text(_cardInfo.title, style: headingTextStyle.copyWith(
            fontSize: 17,
          ),),
          // subtitle section
          Text(
            _cardInfo.subtitle,
            style: appBarSubStyle.copyWith(
                color: AllColors.smallCardColor,
              fontSize: 13
            )
          ),
          const SizedBox(
            height: 5,
          ),
          // review section
          Row(
            children: [
              SvgPicture.asset(
                FirstPageImages.starIcon,
                height: 12,
                width: 12
              ),
              const SizedBox(width: 5),
              Text(_cardInfo.rating, style: headingTextStyle.copyWith(
                fontSize: 13
              )),
              // const SizedBox(width: 3),
              Text('(${_cardInfo.ratingCount} Rating)', style: appBarSubStyle.copyWith(
                color: AllColors.smallCardColor,
                fontSize: 13
              )),
              const Spacer(),
              _cardInfo.freeDelivery ? Container(
                alignment: Alignment.center,
                padding:const EdgeInsets.symmetric(horizontal: 10),
                height: 18,
                decoration: BoxDecoration(
                  color: AllColors.dropDownIconColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text('Free delivery',
                    style: appBarSubStyle.copyWith(
                      color: AllColors.headingColor,
                      fontSize: 12
                    )
                )
              ) : const SizedBox()
            ]
          )
        ]
      )
    );
  }
}