import 'package:assignment7_ui/models/order_model.dart';
import 'package:assignment7_ui/screens/menu_screen.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/texts/orders_texts.dart';
import 'package:assignment7_ui/widgets/app_bar_menu_icon_button.dart';
import 'package:assignment7_ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/widgets/back_icon.dart';
import 'package:assignment7_ui/widgets/order_screen_widgets/order_history_widget.dart';
import 'package:assignment7_ui/widgets/order_screen_widgets/order_ongoing_widget.dart';
import 'package:assignment7_ui/widgets/order_screen_widgets/orders_type_title.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool ongoingActive = true;
  bool historyActive = false;

  final List<OrderModel> ongoingOderDetails = OrdersText.orderDetails;
  final List<OrderModel> orderHistoryDetails = OrdersText.orderDetails;

  void togglingTypes (){
    setState((){
      ongoingActive = !ongoingActive;
      historyActive = !historyActive;
    });
  }


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: OrdersText.appBarTitle),
        actions: [
          AppBarMenuIconButton(
            color: AllColors.backIconGrey,
            widget: MenuScreen()
          ),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: AllColors.dividerBorderGrey, width: 1))),
                child: Row(
                  children: [
                    Expanded(
                      child: OrdersTypeTitle(
                          title: OrdersText.ongoing, active: ongoingActive, toggler: togglingTypes,),
                    ),
                    Expanded(
                      child: OrdersTypeTitle(
                          title: OrdersText.history, active: historyActive, toggler: togglingTypes,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  height: height*0.8,
                  child: ListView.builder(
                    itemCount: ongoingActive 
                        ? ongoingOderDetails.length 
                        : orderHistoryDetails.length,
                    itemBuilder: (context, index){
                      return ongoingActive 
                          ? OrderOngoingWidget(model: ongoingOderDetails[index])
                      :OrderHistoryWidget(model: orderHistoryDetails[index]);
                    },
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
