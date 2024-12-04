import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/examples/works_with_text/utils/text_styles.dart';

class CustomFonts extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Fonts')
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text('Custom Fonts Use', style: textPageHeading)
              ),
              Container(
                child: Text('This is YujiMai_Regular.',
                    style: textTopicPreview.copyWith(fontFamily: 'YujiMai-Regular')
                )
              )
            ]
          )
        )
      )
    );
  }
}