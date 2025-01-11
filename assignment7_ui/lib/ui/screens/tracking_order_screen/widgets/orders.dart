import 'package:assignment7_ui/config/models/order_item.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  final OrderItem model;

  const Orders({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          text: '${model.count}x ',
          style: TextStyles.orderCountTextStyle,
          children: [
            TextSpan(
              text: model.name,
              style: TextStyles.orderItemNameTextStyle
            )
          ]
        )
    );
  }
}
