import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/examples/works_with_text/utils/text_styles.dart';

class GoogleFontsUse extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Fonts', style: appBarTitleStyle),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text('Google Fonts Use', style: textPageHeading),
              ),
              //using google fonts in RichText
              Container(
                child: Text('')
              )
            ]
          )
        )
      )
    );
  }
}