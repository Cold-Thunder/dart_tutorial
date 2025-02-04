import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_controller_use.dart';

class TabbarButtons extends StatefulWidget {
  final GlobalKey clickedKey;
  final ItemModel model;
  final Function func;
  final int? index;

  const TabbarButtons(
      {
      this.index,
      required this.clickedKey,
      required this.model,
      required this.func,
      super.key});

  @override
  State<TabbarButtons> createState() => _TabbarButtonsState();
}

class _TabbarButtonsState extends State<TabbarButtons> {


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.func(widget.model.itemKey, widget.index);
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.all(5),
        height: 40,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: widget.clickedKey == widget.model.itemKey ? Colors.blue : Colors.white,
          border: Border.all(width: 1, color: Colors.grey),
        ),
        child: Text(
          "${widget.model.title + 1}",
          style: TextStyle(
            color: widget.clickedKey == widget.model.itemKey
                ? Colors.white
                : Colors.blue,
          ),
        ),
      ),
    );
  }
}
