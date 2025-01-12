import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/flutter_tabbar_widget/tabbar_example_one.dart';
import 'package:widgets_use/ui/widgets_use/flutter_tabbar_widget/tabbar_example_two.dart';

class FlutterTabbarWidgetUse extends StatelessWidget {
  const FlutterTabbarWidgetUse({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar use')
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> TabbarExampleOne())
                    );
                  },
                  child: Text('Example One')
              ),ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> TabbarExampleTwo())
                    );
                  },
                  child: Text('Example Two')
              ),
            ]
          )
        )
      )
    );
  }
}
