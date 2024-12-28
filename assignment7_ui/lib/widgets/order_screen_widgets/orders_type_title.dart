import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class OrdersTypeTitle extends StatefulWidget {
  final String title;
  final bool active;
  final void Function() toggler;

  const OrdersTypeTitle({required this.title, required this.active, required this.toggler, super.key});

  @override
  State<OrdersTypeTitle> createState() => _OrdersTypeTitleState();
}

class _OrdersTypeTitleState extends State<OrdersTypeTitle> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.toggler,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 7, left: 15, right: 15),
        height: 33,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: widget.active ? AllColors.buttonOrange : AllColors.transparent
            )
          )
        ),
        child: Text(widget.title, style: TextStyles.elevatedButtonStyle.copyWith(
          color: widget.active ? AllColors.buttonOrange : AllColors.inactiveTypeGrey
        ))
      ),
    );
  }
}
