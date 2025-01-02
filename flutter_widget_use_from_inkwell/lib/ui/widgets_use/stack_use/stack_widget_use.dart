import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/config/utiles/styles/all_texts.dart';
import 'package:widgets_use/config/utiles/styles/text_styles.dart';
import 'package:widgets_use/ui/widgets_use/stack_use/stack_second_screen.dart';

class StackWidgetUse extends StatelessWidget {
  const StackWidgetUse({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget use')
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: width,
          child: Column(
            spacing: 20,
            children:[
              SizedBox(
                child: Text(
                  AllTexts.bd,
                  style: TextStyles.flagHeading
                )
              ),
              // bd flag
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                   Container(
                      width: 165,
                     height: 100,
                     color: AllColors.bdGreen
                   ),
                  Positioned(
                    left: 40,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AllColors.bdRed,
                      )
                    ),
                  )
                ]
              ),
              // germany flag
              SizedBox(
                  child: Text(
                      AllTexts.ger,
                      style: TextStyles.flagHeading
                  )
              ),
              Stack(
                children: [
                  Container(
                    width: 165,
                    height: 100,
                    color: AllColors.black
                  ),
                  Positioned(
                    top: 33.33,
                    child: Container(
                        width: 165,
                        height: 33.33,
                        color: AllColors.gerRed
                    ),
                  ),
                  Positioned(
                    top: 67,
                    child: Container(
                      width: 165,
                      height: 33.33,
                      color: AllColors.gerYellow
                    )
                  )
                ],
              ),
              SizedBox(
                  child: Text(
                      AllTexts.italy,
                      style: TextStyles.flagHeading
                  )
              ),
              Stack(
                children: [
                  Container(
                      width: 165,
                      height: 100,
                       color: AllColors.italyGreen
                  ),
                  Positioned(
                    left: 55,
                    child: Container(
                        width: 55,
                        height: 100,
                        color: AllColors.white
                    ),
                  ),
                  Positioned(
                    left: 110,
                    child: Container(
                        width: 55,
                        height: 100,
                        color: AllColors.italyRed
                    ),
                  )
                ]
              ),
              SizedBox(
                  child: Text(
                      AllTexts.sweden,
                      style: TextStyles.flagHeading
                  )
              ),
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 165,
                    color: AllColors.swedenBlue
                  ),
                  Positioned(
                    left: 45,
                    child: Container(
                      width: 17,
                      height: 100,
                      color: AllColors.swedenYellow
                    ),
                  ),
                  Positioned(
                    top: 45,
                    child: Container(
                        width: 165,
                        height: 17,
                        color: AllColors.swedenYellow
                    ),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=>StackSecondScreen()
                      )
                    );
                  },
                  child: Text('Second Stack')
              )
            ]
          )
        )
      )
    );
  }
}
