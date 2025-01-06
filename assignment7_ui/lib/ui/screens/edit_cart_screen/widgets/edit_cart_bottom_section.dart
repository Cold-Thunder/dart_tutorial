import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/payment_screen/payment_screen.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditCartBottomSection extends StatelessWidget {
  final double totalPrice;

  const EditCartBottomSection({required this.totalPrice, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AllTexts.deliveryAdd, style: TextStyles.hintTextStyle),
              InkWell(
                  onTap: () {},
                  child:
                      Text(AllTexts.edit, style: TextStyles.cartEditTextStyle))
            ],
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            height: 62,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AllColors.inputFieldWhite
            ),
            child: Text(AllTexts.addressHint, style: TextStyles.hintTextStyle)
          ),
          Expanded(
            child: Row(
              spacing: 10,
                children: [
              Text("${AllTexts.total}:",
                style:TextStyles.hintTextStyle
              ),
              Text(
                "\$$totalPrice",
                style: TextStyles.appBarTitleStyle.copyWith(
                  fontSize: 30
                )
              ),
                  Spacer(),
                  InkWell(
                    onTap: (){

                    },
                      splashColor: AllColors.transparent,
                      highlightColor: AllColors.transparent,
                    child: Row(
                      spacing: 5,
                      children: [
                        Text(
                          AllTexts.breakDown,
                          style: TextStyles.homeAppBarTitle.copyWith(
                            fontSize: 14
                          )
                        ),
                        SvgPicture.asset(AllImages.rightArrow, height: 10, width: 10)
                      ]
                    )
                  )
            ]),
          ),
          ElevatedButtonDesign(
              title: AllTexts.placeOrder, screen: PaymentScreen())
        ],
      ),
    );
  }
}
