import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project1/examples/works_with_text/utils/text_styles.dart';

class TextUseHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Use Home')
      ),
      body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  child: Text('Text Uses', style: textPageHeading)
                ),
                Container(
                  child: Text('Custom Fonts', style: textUseNormal)
                ),
                // using text.rich
                Container(
                  child: Text.rich(
                    TextSpan(
                      text: 'Text.rich use: ',
                      style: textTopicHeading,
                      children: [
                        TextSpan(
                          text: 'Hello',
                          style: textTopicPreview
                        )
                      ]
                    )
                  )
                ),
                // using RichText
                Container(
                  child: RichText(
                    text: TextSpan(
                      text: 'RichText Use: ',
                      style: textTopicHeading,
                      children: [
                        TextSpan(
                          text: 'I am ',
                            style: textTopicPreview.copyWith(
                              fontSize: 24
                            )
                        ),
                        TextSpan(
                          text: 'RichText',
                          style: textTopicPreview.copyWith(
                            color: Colors.orange
                          )
                        )
                      ]
                    )

                  )
                ),
                SizedBox(
                  child: Text('Use some Google fonts: ', style: textTopicHeading),
                ),
                SizedBox(
                  child: RichText(
                    text: TextSpan(
                      text: 'Custom fonts: ',
                      style: textTopicHeading,
                      children: [
                        TextSpan(
                          text: 'Click Me',
                          style: textTopicPreview,
                          recognizer: TapGestureRecognizer()
                            ..onTap=(){
                              Navigator.pushNamed(context, '/custom_fonts');
                            }
                        )
                      ]
                    )
                  )
                )
              ]
            )
          )
      )
    );
  }
}