import 'package:assignment7_ui/config/models/order_item.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/widgets/orders.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class BottomSheetTop extends StatelessWidget {
  BottomSheetTop({super.key});

  final List<OrderItem> orderList = AllTexts.orderList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          GreyCard(height: 63, width: 63, borderRad: 12, image: AllImages.coffeeHouseImg),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AllTexts.uttoraCoffee, style: TextStyles.appBarTitleStyle.copyWith(
                fontSize: 18
              )),
              Text('Ordered at ${AllTexts.orderTime}', style: TextStyles.hintTextStyle),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: orderList.map((item)=>Orders(model: item)).toList(),
              )
            ],
          ),

        ],
      ),
    );
  }
}
