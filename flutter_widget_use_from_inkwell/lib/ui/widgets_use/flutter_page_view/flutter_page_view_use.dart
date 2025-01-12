import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/flutter_page_view/example_one.dart';

class FlutterPageViewUse extends StatelessWidget {
  const FlutterPageViewUse({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View widget use')
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>ExampleOne()
                    ));
                  },
                  child: Text(
                    'Page View Example1'
                  )
                )

            ],
          ),
        ),
      )
    );
  }
}
