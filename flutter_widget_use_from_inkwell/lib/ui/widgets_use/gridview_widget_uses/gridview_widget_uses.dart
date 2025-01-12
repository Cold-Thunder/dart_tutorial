import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class GridviewWidgetUses extends StatelessWidget {
  GridviewWidgetUses({super.key});

  final List<Color> colors = [
    AllColors.purple,
    AllColors.gerYellow,
    AllColors.gerRed,
    AllColors.gerYellow,
    AllColors.italyRed,
    AllColors.bdGreen,
    AllColors.swedenYellow,
    AllColors.swedenBlue,
    AllColors.italyGreen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View')
      ),
      body:SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent:100,
                      mainAxisExtent: 100,
                      crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: colors.length,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        color: colors[index],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: 100,
                      width: 100,
                    );
                  }
                )
              ],
            ),
          )
        )
      )
    );
  }
}
