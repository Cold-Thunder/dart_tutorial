import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/utiles/all_texts/my_texts.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class BestMatchCard extends StatelessWidget{
  double cardWidth = 170;
  double cardHeight = 180;
  final String _image;
  final String _title;
  final String _company;
  final String _location;
  final String _time;
  BestMatchCard({required String image, required String title, required String company, required String location, required String time}):
   _image = image, _title = title, _company =company, _location = location, _time = time;
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        print('${_title} ${_company}');
      },
      child:
      Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10)
      ),
      height: cardHeight,
      width: cardWidth,
      child: Flex(
        direction: Axis.vertical,
        children: [
            Container(
              width: cardWidth,
              alignment: Alignment.centerLeft,
              //image section
              child: Container(
                padding: const EdgeInsets.all(15),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromRGBO(0,0,0,0.3),
                      width: 2
                    )
                  ),
                  // using image
                  child: Image.network(BestMatchCardsTexts.jobPosts[0]['image'],
                        fit: BoxFit.fitHeight
                      )

              )
            ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: cardWidth,
            child: Text(_title, style: pageHeading.copyWith(
              fontSize: 22
            )),
          ),
          Container(
            width: cardWidth,
            child: Text(_company, style: pageHeading.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ))
          ),
          Container(
            width: cardWidth,
            child: Text(_location, style: pageHeading.copyWith(
              fontSize: 16,
              color: Colors.grey[400],
            ),
            )
          ),
          // SizedBox(
          //   height: cardHeight*0.16,
          // ),
          Expanded(
            child:
          Container(
            width: cardWidth,
            alignment: Alignment.bottomLeft,
            child: Text(_time, style: pageHeading.copyWith(
              fontSize: 18,
              color: Colors.grey[400]
            ))
          ))
        ]
      )
    ));
  }
}