import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/flutter_page_view/screen_four.dart';
import 'package:widgets_use/ui/widgets_use/flutter_page_view/screen_one.dart';
import 'package:widgets_use/ui/widgets_use/flutter_page_view/screen_three.dart';
import 'package:widgets_use/ui/widgets_use/flutter_page_view/screen_two.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example one')
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              spacing: 30,
              children:[
                SizedBox(
                  height: 400,
                  child: PageView(
                    controller: _controller,
                    children: [
                      ScreenOne(),
                      ScreenTwo(),
                      ScreenThree(),
                      ScreenFour()
                    ],
                  ),
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(
                       onPressed: (){
                         _controller.previousPage(
                             duration: Duration(milliseconds: 500),
                             curve:Curves.linear
                         );
                       },
                       child: Text('Previous Page')
                   ),
                   ElevatedButton(
                       onPressed: (){
                         _controller.nextPage(
                             duration: Duration(milliseconds: 500),
                             curve: Curves.linear);
                       },
                       child: Text('Next Page')
                   )
                 ]
               )
              ]
            ),
        )
      )
    );
  }
}
