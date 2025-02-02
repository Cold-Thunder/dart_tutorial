
import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_controller_use.dart';

class TabbarButtons extends StatelessWidget {
  final GlobalKey clickedKey;
 final ItemModel model;
  final Function func;
  final int? index;
  const TabbarButtons({this.index, required this.clickedKey, required this.model, required this.func, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          func(model.itemKey, index);
        },
        child:Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(5),
          height: 40,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: clickedKey == model.itemKey ? Colors.blue : Colors.white,
            border: Border.all(
              width: 1,
              color: Colors.grey
            )
          ),
          child: Text("${model.title+1}", style: TextStyle(
            color: clickedKey == model.itemKey ? Colors.white : Colors.blue,
          ))
        )
    );
  }
}
