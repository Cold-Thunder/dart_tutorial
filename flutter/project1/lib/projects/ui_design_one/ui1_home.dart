import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/utiles/textStyles_for_pages.dart';

class UI1Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Column(
            children: [
            Container(
              child: Text('Hi Jhon', style: homePageGreeting)
            ),
            Container(),
        ]
          )
        )
      )
    );
  }
}