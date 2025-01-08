
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/orders_texts.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class OrderCardPriceSection extends StatelessWidget{
  final String price;
  final String count;
  final String? date;
  const OrderCardPriceSection({required this.price, required this.count, this.date, super.key});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height:17,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            price,
            style: TextStyles.profileNameStyle.copyWith(fontSize: 14)
          ),
          const SizedBox(width: 10),
          VerticalDivider(
            color: AllColors.orderBottomBorderGrey,
            thickness: 1,
            width: 1
          ),
          const SizedBox(width: 5),

          date != null ? Container(
            margin: const EdgeInsets.only(right: 10),
              child: Text(date!, style: TextStyles.itemCountTextStyle)
          ) : SizedBox(),
          date != null ? Container(
            margin: const EdgeInsets.only(right: 10),
              child: GreyCard(height: 4, width: 4, borderRad: 2,)
          ): SizedBox(width: 5),
          Text(
            '$count ${OrdersText.item}',
            style: TextStyles.itemCountTextStyle
          )
        ],
      ),
    );
  }
}