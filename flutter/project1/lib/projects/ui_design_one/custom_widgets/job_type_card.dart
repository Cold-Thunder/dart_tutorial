import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class JobTypeCard extends StatelessWidget{
  final String _title;

  JobTypeCard({required String title}): _title = title;

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 5),
      padding: const EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.center,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text('$_title', style: pageNormalText.copyWith(
          color: Colors.black,
          fontSize: 14
      ))
    );
  }
}