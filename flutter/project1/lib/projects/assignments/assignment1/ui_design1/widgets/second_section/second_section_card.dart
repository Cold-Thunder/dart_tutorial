import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/second_section/second_sec_bottom.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/second_section/second_sec_top_left.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/second_section/second_sec_top_right.dart';

class SecondSectionCard extends StatelessWidget{
  const SecondSectionCard({super.key});
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin:const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.only(left: 35, right: 35),
      width: width,
      child: Container(
        padding: const EdgeInsets.all(15),
          width: width,
          decoration: BoxDecoration(
            color: myWhite,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                offset: Offset(1,1),
                color: Colors.black12,
                spreadRadius: 3,
                blurRadius: 10
              )
            ]
          ),
        child: Column(
            children: [
              // top section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // left section
                  SecondSectopLeft(),
                  // right section
                  SecondSecTopRight()
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                    SecondSecBottom()
                ],
              )
            ]
        )
      )
    );
  }
}