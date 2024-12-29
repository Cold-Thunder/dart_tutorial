import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_use/utiles/styles/text_styles.dart';
import 'package:widgets_use/utiles/texts.dart';

class CardWidgetUse extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Card widget use'),
      ),
      body: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 200,
              child: Card(
                color: Colors.black,
                  elevation: 15,
                  shadowColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  surfaceTintColor: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text(Texts.name, style: TextStyles.headingStyle),
                      ],
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}