
import 'package:flutter/material.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/images.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/styles_alert.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/texts.dart';

//basic alert dialog
basicAlertDialog(BuildContext context){
  return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text(AlertTexts.basicAlertTitle, style: alertDialogTitleStyle),
          actions: [
            TextButton(
              child: Text(AlertTexts.alertDialogActionOk,
                  style: alertDialogActionStyleOk
              ),
              onPressed: (){
                print('Ok pressed');
                Navigator.pop(context);
              }
            )
          ]
        );
      }
  );
}

// multi action alert dialog
multiActionDialog(BuildContext context){
  return showDialog(
    context: context,
    builder: (context){
      return AlertDialog(
        title: Text(AlertTexts.multiActionTitle,
            style: alertDialogTitleStyle
        ),
        actions: [
          TextButton(
              child: Text(AlertTexts.alertDialogActionCancel,
                  style: alertDialogActionStyleCancel
              ),
              onPressed: (){
                print('Cancel button pressed');
                Navigator.pop(context);
              }
          ),
          TextButton(
            child: Text(AlertTexts.alertDialogActionOk,
              style: alertDialogActionStyleOk
            ),
            onPressed: (){
              print('Ok button pressed');
              Navigator.pop(context);
            }
          ),

        ]
      );
    }
  );
}

// show custom dialog alert dialog
customDialogAlert(BuildContext context){
  return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text(
           AlertTexts.customDialogTitle,
              style: alertDialogTitleStyle,
          ),
          content: SizedBox(
            width: 50,
              height: 100,
            child: Image.asset(
              AlertImages.alertContentImage,
              fit: BoxFit.fitHeight
            )
          ),
          actions: [
            TextButton(
              child: Text(AlertTexts.alertDialogActionCancel,
                style: alertDialogActionStyleCancel,
              ),
              onPressed: (){
                Navigator.pop(context);
              }
            ),
            TextButton(
              child: Text(AlertTexts.alertDialogActionOk,
                style: alertDialogActionStyleOk
              ),
              onPressed: (){
                Navigator.pop(context);
              }
            )
          ]

        );
      }
  );
}
