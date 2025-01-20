import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/wrap_widget_uses/widgets/wrap_card.dart';

class WrapWidgetUses extends StatelessWidget {
  WrapWidgetUses({super.key});

  final List<Widget> wrapCards = [
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
    WrapCard(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget Uses')
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                  Wrap(
                    // alignment: WrapAlignment.start,
                    // direction: Axis.horizontal,
                    // crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 10,
                    runSpacing: 10,
                    // runAlignment: WrapAlignment.start,
                    children: wrapCards.map((item){
                      return item;
                    }).toList(),
                  )
              ]
            ),
          )
        )
      )
    );
  }
}
