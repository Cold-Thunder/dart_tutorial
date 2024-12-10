
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';

class HomePageBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.topCenter,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child:
        Container(
          margin:const EdgeInsets.all(15),
          child:Icon(Icons.more_horiz,
              color: myWhite,
            size: 34
          )),
          onTap: (){
              print('menu bar pressed');
           }
        ),
          InkWell(
            child:
          Container(
            margin: const EdgeInsets.only(right:15, top: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              child: Icon(Icons.person, color: manColor)
            )
          )),
  ]
      )
    );
  }
}