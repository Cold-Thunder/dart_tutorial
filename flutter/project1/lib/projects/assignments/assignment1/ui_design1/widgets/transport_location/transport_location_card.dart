import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/texts/ass_ui1_texts.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/transport_location/from_to_card.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/transport_location/transport_details.dart';

class TransportLocationCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsets.only(left: 30, right: 30),
      child:
          Container(
            padding: const EdgeInsets.all(15),
            height: 150,
            width: width,
            decoration: BoxDecoration(
              color: myWhite,
              borderRadius: BorderRadius.circular(25),
              boxShadow:const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(1,1),
                  spreadRadius: 3,
                  blurRadius: 10
                )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // left side design
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    // from and to datas
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // from content
                        FromToCard(cardIcon: Icons.navigation,
                          iconColor: myGreen,
                          direction: AssUi1Texts.transportFrom,
                          location: AssUi1Texts.location1,
                          rotate: 45
                        ),
                        // to content
                        FromToCard(
                          cardIcon: Icons.location_on,
                          iconColor: arrowBackColor,
                          direction: AssUi1Texts.transportTo,
                          location: AssUi1Texts.location2
                        )
                      ]
                    )
                  ),
                  // right side design
                  Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                          radius: 30,
                          backgroundColor: arrowBackColor,
                          child: const Icon(
                              Icons.swap_vert_sharp,
                              size: 55,
                              color: Colors.white
                          )
                      )
                  )

                ]
            )
          ),

    );
  }
}