import 'package:assignment7_ui/config/models/order_model.dart';
import 'package:assignment7_ui/config/utiles/texts/orders_texts.dart';
import 'package:assignment7_ui/ui/screens/order_screen/widgets/order_ongoing_widget.dart';
import 'package:flutter/material.dart';

class OngoingScreen extends StatelessWidget {
  OngoingScreen({super.key});

  final List<OrderModel> ongoingOderDetails = OrdersText.orderDetails;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Expanded(
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ongoingOderDetails.length,
                      itemBuilder: (context, index){
                        return OrderOngoingWidget(model: ongoingOderDetails[index]);
                      },
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
