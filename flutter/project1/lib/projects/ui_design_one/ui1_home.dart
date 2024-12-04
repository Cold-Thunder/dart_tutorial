import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/utiles/all_texts/my_texts.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class UI1Home extends StatelessWidget{



  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: 'Hire',
            style: appBarTitle,
            children: [
              TextSpan(
                text: 'me',
                style: appBarTitle.copyWith(color: Colors.lightBlueAccent)
              )
            ]
          )
        ),
        actions: [
          InkWell(
            onTap: (){
              print('Profil done');
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle
              )
            )
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                width: width*0.8,
                child: Text(MyTexts.homePageHeading, style: pageHeading)
              )
            ]
          )
        )
      )
    );
  }
}