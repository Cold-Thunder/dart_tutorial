import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/my_address_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAddressWidgetTile extends StatelessWidget {
  const MyAddressWidgetTile({super.key});

  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AllColors.inputFieldWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
           Container(
             alignment: Alignment.center,
             height: 48,
             width: 48,
             decoration: BoxDecoration(
               color: AllColors.appbarWhite,
               shape: BoxShape.circle
             ),
             child: SvgPicture.asset(AllImages.home, height: 20, width: 18)
           ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title section
              SizedBox(
                width: width * 0.67,
                child: Row(
                  children: [
                    Text(
                      MyAddressText.home,
                      style: TextStyles.dropDownTextStyle.copyWith(
                        color: AllColors.headingBlack
                      )
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){},
                      child: SvgPicture.asset(AllImages.editIcon, height: 15, width: 15),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: (){},
                      child: SvgPicture.asset(AllImages.deleteIcon, height: 15, width: 15),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10
              ),
              SizedBox(
                width: width * 0.6,
                child: Text(MyAddressText.homeAdd, style:TextStyles.headingTextStyle.copyWith(
                  fontSize: 14
                ))
              )
            ]
          )
        ],
      ),
    );
  }
}
