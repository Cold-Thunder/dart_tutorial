import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/custom_widgets/navigate_button.dart';
import 'package:project1/uses_of_widgets/button_widgets_use.dart';
import 'package:project1/uses_of_widgets/container_use.dart';
import 'package:project1/uses_of_widgets/stack_widget_use.dart';
import 'package:project1/uses_of_widgets/textField_use.dart';
import 'package:project1/uses_of_widgets/text_use.dart';
import 'package:project1/uses_of_widgets/uses_row_column.dart';

class Wrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uses of all widgets', style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        )),
        backgroundColor: Colors.redAccent,

      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                child: NavigateButton(title: 'Container', navigateTo: ContainerUse())
              ),
              Container(
                child: NavigateButton(title: 'Text', navigateTo: TextUse())
              ),
              Container(
                child: NavigateButton(title: 'Row & Column', navigateTo: RowColumn(),)
              ),
              Container(
                child: NavigateButton(title: 'Text Field', navigateTo: TextFieldWidget())
              ),
              Container(
                child: NavigateButton(title: 'Buttons', navigateTo: ButtonWidgetsUse())
              ),
              Container(
                child: NavigateButton(title: 'Stack', navigateTo: StackWidgetUse())
              )
            ]
          )
        )
      ))
    );
  }
}