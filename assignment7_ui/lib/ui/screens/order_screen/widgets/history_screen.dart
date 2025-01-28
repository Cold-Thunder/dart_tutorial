import 'package:assignment7_ui/config/models/order_model.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/order_screen/widgets/order_history_widget.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  final List<OrderModel> orderHistoryDetails = AllTexts.orderDetails;


  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: orderHistoryDetails.length,
                  itemBuilder: (context, index){
                    return OrderHistoryWidget(model: orderHistoryDetails[index]);
                  },
                ),
              ),
            ],
          ),
    );
  }
}
