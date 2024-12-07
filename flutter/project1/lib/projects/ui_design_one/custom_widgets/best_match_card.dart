import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/const_values/height_width_value.dart';
import 'package:project1/projects/ui_design_one/ui1_blog_page.dart';
import 'package:project1/projects/ui_design_one/utiles/all_texts/my_texts.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class BestMatchCard extends StatelessWidget{
  double cardWidth = BestCardHeightandWidth.width;
  double cardHeight = BestCardHeightandWidth.height;
  final Map _jobDetails;
  BestMatchCard({required Map jobDetails}): _jobDetails = jobDetails;

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>BlogPage(
              jobDetails: _jobDetails,
          )
        ));
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
      child: Column(
        // direction: Axis.vertical,
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
                  child: Image.network(_jobDetails['image'],
                        fit: BoxFit.fitHeight
                      )

              )
            ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: cardWidth,
            child: Text(_jobDetails['title'], style: pageHeading.copyWith(
              fontSize: 22
            )),
          ),
          Container(
            width: cardWidth,
            child: Text(_jobDetails['company'], style: pageHeading.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ))
          ),
          Container(
            width: cardWidth,
            child: Text(_jobDetails['location'], style: pageHeading.copyWith(
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
            child: Text(_jobDetails['time'], style: pageHeading.copyWith(
              fontSize: 18,
              color: Colors.grey[400]
            ))
          ))
        ]
      )
    ));
  }
}