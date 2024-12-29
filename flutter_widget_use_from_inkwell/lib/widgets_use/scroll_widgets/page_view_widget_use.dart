import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_use/widgets_use/scroll_widgets/screen1.dart';
import 'package:widgets_use/widgets_use/scroll_widgets/screen2.dart';
import 'package:widgets_use/widgets_use/scroll_widgets/screen3.dart';
import 'package:widgets_use/widgets_use/scroll_widgets/screen4.dart';

class PageViewWidgetUse extends StatefulWidget{
  @override
  State<PageViewWidgetUse> createState() => _PageViewWidgetUseState();
}

class _PageViewWidgetUseState extends State<PageViewWidgetUse> {
  PageController _controller = PageController();
  int ind  =0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Widget use')
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (index){
                setState((){
                  ind = index;
                });
              },
              children: [
                Screen1(),
                Screen2(),
                Screen3(),
                Screen4()
              ]
            ),
          ),
          ElevatedButton(
            onPressed: (){
              _controller.nextPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeIn);
            },
            child: Text('Next')
          ),
          ind == 3 ? ElevatedButton(
            onPressed: (){
              _controller.previousPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.linear
              );
            },
            child: Text('Previous')
          ) : SizedBox()
        ]
      )
    );
  }
}