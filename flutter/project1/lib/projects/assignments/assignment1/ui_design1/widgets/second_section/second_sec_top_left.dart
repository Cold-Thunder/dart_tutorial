import 'package:flutter/cupertino.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/actions/inc_des_action.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/text_styles.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/texts/ass_ui1_texts.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/second_section/second_inc_des.dart';

class SecondSectopLeft extends StatefulWidget {
  const SecondSectopLeft({super.key});
  @override
  State<SecondSectopLeft> createState()=> _SecondSectopLeftState();
}


class _SecondSectopLeftState extends State<SecondSectopLeft>{
  int count = 1;
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color: myGreen,
                      shape: BoxShape.circle,
                    )
                ),
                // passenger number
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(AssUi1Texts.passenger,
                          style: transportTopDes
                        )
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: SecondIncDes(change: '-'),
                            onTap: (){
                              setState(() {
                                count = decreaseAction(count);
                              });
                            }
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            child: Text(
                              '$count',
                              style: transportBottomDes.copyWith(
                                fontSize: 22
                              )
                            )
                          ),
                         GestureDetector(
                           child: SecondIncDes(change: '+'),
                           onTap: (){
                             setState((){
                               if(count > 1){
                                 count = increaseAction(count);
                               }
                             });
                           }
                         )
                        ],
                      )
                    ],
                  )
                )
              ],
            )
          )

        ]
      )
    );
  }
}