import 'package:flutter/material.dart';
import 'package:project1/examples/row_column_examples/my_colors.dart';
import 'package:project1/examples/row_column_examples/row_col_texts.dart';
import 'package:project1/examples/row_column_examples/text_styles.dart';
import 'package:project1/examples/row_column_examples/widgets/card_create.dart';

class RowColumnUses extends StatelessWidget{
  const RowColumnUses({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(RowColumnTexts.appBartext, style: appBarTextStyle),
        backgroundColor: blue
      ),
      body: SingleChildScrollView(
      child: SafeArea(child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              child: Text(RowColumnTexts.pageHeading, style: pageHeadingStyle
              )
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              color: Colors.lightBlueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    CardCreate(fillColor: red),
                    CardCreate(fillColor: green),
                  CardCreate(fillColor: blue)
                ]
              )
            ),
            Container(
              padding: const EdgeInsets.only(top:10, bottom: 10),
              color: green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardCreate(fillColor: blue),
                  CardCreate(fillColor: red)
                ]
              )
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              color: red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardCreate(fillColor: green),
                  CardCreate(fillColor: blue),
                ],
              )
            ),
            Container(
              height: 180,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              color: blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardCreate(fillColor: red),
                  CardCreate(fillColor: green)
                ]
              )
            ),
            Container(
              height: 180,
              color: red,
              padding: const EdgeInsets.only(top:10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardCreate(fillColor: blue),
                  CardCreate(fillColor: green)
                ]
              )
            )
          ],
        )
      ))
    ));
  }
}