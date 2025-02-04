import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_controller_use.dart';

class PositionedAdvanceTabButton extends StatelessWidget {
  final ItemModel model;
  final Function tabButtonFunc;
  final int clickedInd;
  final int index;
  const PositionedAdvanceTabButton({
    required this.clickedInd,
    required this.index,
    required this.model, required this.tabButtonFunc, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        tabButtonFunc(index);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: clickedInd == index ? Colors.blue : Colors.white,
        ),
        child: Text(
          '${model.title+1}',
          style: TextStyle(
            fontSize: 25,
            color: clickedInd == index ? Colors.white : Colors.blue
          )
        )
      )
    );
  }
}
