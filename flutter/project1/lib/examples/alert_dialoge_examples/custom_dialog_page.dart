import 'package:flutter/material.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/styles_alert.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/texts.dart';

class CustomDialogPage extends StatelessWidget{
  const CustomDialogPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Dialog(

          child: Container(
            height: 180,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(1,1),
                  color: Colors.black12,
                  spreadRadius: 3,
                  blurRadius: 10,
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Text(AlertTexts.customDialogTwoTitle,
                    style: headingTextStyleAlt.copyWith(color: Colors.white)),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: alertOutlinedButtonStyle,
                      child: Text(AlertTexts.alertDialogActionCancel,
                        style: alertDialogActionStyleCancel.copyWith(color: Colors.red)
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                    ),
                    ElevatedButton(
                      style: elevatedButtonStyleAlt,
                      child: Text(AlertTexts.alertDialogActionOk,
                          style:alertDialogActionStyleOk.copyWith(color: Colors.white)),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                    )
                  ]
                )
              )
            ]
          ))
        )
      )
    );
  }
}