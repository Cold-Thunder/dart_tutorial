import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/heading_section/heading_title.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/heading_section/home_page_bar.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/transport_location/transport_location_card.dart';

class HeadingSection extends StatelessWidget{
  double height = 280;
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
              height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(195, 166, 249,1),
                    Color.fromRGBO(151, 108, 223, 1)
                  ],
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)
              ),
              // shape: BoxShape.circle
            ),
          ),
          SizedBox(
              child: HomePageBar()
          ),
          const SizedBox(
            height: 20
          ),
          // transport name title
          const Positioned(
            top: 50,
            left: 0,
            child: HeadingTitle()
          ),
          // transport loction card
          Positioned(
            top: height -90,
            child: Container(
              width: width,
              alignment: Alignment.center,
              child: TransportLocationCard()
            )
          )
        ]
      )
    );
  }
}