import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class TextButtonUse extends StatefulWidget {
  final String _title;
  late bool _showBorder;
  TextButtonUse({
    required String title,
    required bool showBorder
  }): _title = title, _showBorder = showBorder;


  @override
  State<TextButtonUse> createState()=> _TextButtonUseState();
}

class _TextButtonUseState extends State<TextButtonUse>{
  @override
  Widget build(BuildContext context){
    bool show = widget._showBorder;
    return Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.only(bottom: 5),
         decoration: BoxDecoration(
           border: Border(
             bottom: BorderSide(
               width: 1,
               color: show ?  Colors.deepOrange : Colors.transparent
             )
           )
         ),
          child: Text('${widget._title}', style: buttonTextStyle)
    );
  }
}