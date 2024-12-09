
import 'package:flutter/material.dart';
import 'package:project1/examples/alert_dialoge_examples/custom_dialog_page.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/styles_alert.dart';
import 'package:project1/examples/alert_dialoge_examples/utils/texts.dart';
import 'package:project1/examples/alert_dialoge_examples/widgets/alert_dialog_designs.dart';
import 'package:project1/examples/image_widget_use/text_styles.dart';
import 'package:project1/examples/row_column_examples/row_and_column.dart';

class AlertDialogHome extends StatelessWidget{
  const AlertDialogHome({super.key});
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(AlertTexts.appBarTitle)
      ),
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: 55,
                width: width,
                child: Text(
                    AlertTexts.homePageHeading,
                    style: headingTextStyle,
                  textAlign:TextAlign.center
                )
              ),
              const SizedBox(height: 10),
              // basic alert dialog
              SizedBox(
                  height: 55,
                child: ElevatedButton(
                  style: elevatedButtonStyleAlt,
                  child: Text(
                      AlertTexts.basicAlertDia,
                    style: elevatedButtonTextStyle
                  ),
                  onPressed: (){
                      basicAlertDialog(context);
                  }
                )
              ),
              const SizedBox(height: 10),
              // multiple action dialog
              SizedBox(
                  height: 55,

                child: ElevatedButton(
                  style: elevatedButtonStyleAlt,
                  child: Text(
                      AlertTexts.multiActionButton,
                      style: elevatedButtonTextStyle
                  ),
                  onPressed: (){
                      multiActionDialog(context);
                  }
                )
              ),
              const SizedBox(height: 10),
              // custom alert dialog
              SizedBox(
                  height: 55,
                child: ElevatedButton(
                  style: elevatedButtonStyleAlt,
                  child: Text(AlertTexts.customDialogButtonTitle,
                    style: elevatedButtonTextStyle,
                  ),
                  onPressed: (){
                      customDialogAlert(context);
                  }
                )
              ),
              const SizedBox(height: 10),
              // custom alert dialog
              SizedBox(
                  height: 55,

                child: ElevatedButton(
                  style: elevatedButtonStyleAlt,
                  child: Text(AlertTexts.customDialogTwoButtonTitle,
                      style: elevatedButtonTextStyle),
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>const CustomDialogPage())
                    );
                  }
                )
              ),
              const SizedBox(height: 10),
              // custom alert dialog
              SizedBox(
                  height: 55,

                  child: ElevatedButton(
                      style: elevatedButtonStyleAlt,
                      child: Text(AlertTexts.goToRowColumn,
                          style: elevatedButtonTextStyle),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>const RowColumnUses())
                        );
                      }
                  )
              ),
            ]
          )
        )
      )
    );
  }
}