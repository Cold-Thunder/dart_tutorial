import 'package:assignment7_ui/models/order_model.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/orders_texts.dart';
import 'package:assignment7_ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/widgets/grey_card.dart';
import 'package:assignment7_ui/widgets/order_screen_widgets/order_card_price_section.dart';
import 'package:assignment7_ui/widgets/order_screen_widgets/order_card_top_section.dart';
import 'package:assignment7_ui/widgets/outline_button_design.dart';
import 'package:flutter/material.dart';

class OrderOngoingWidget extends StatelessWidget {
  final OrderModel model;
  const OrderOngoingWidget({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: width,
      height: 171,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // type section
          Container(
            alignment: Alignment.topLeft,
            height: 30,
            width: width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: AllColors.orderBottomBorderGrey
                )
              )
            ),
            child: Text(
              model.foodType,
              style:TextStyles.appBarTitleStyle.copyWith(
                fontSize: 14
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GreyCard(height: 60, width: 60),
              SizedBox(width: 15),
              SizedBox(
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OrderCardTopSection(title: model.title, id: model.id),
                    const SizedBox(height: 10),
                    // middle section
                    OrderCardPriceSection(price: model.price, count: model.count),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // buttons
          SizedBox(
            height: 38,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 138,
                  child: ElevatedButtonDesign(title: OrdersText.track)
                ),
                OutlineButtonDesign(title: OrdersText.cancel)
              ],
            ),
          )
        ],
      ),
    );
  }
}
