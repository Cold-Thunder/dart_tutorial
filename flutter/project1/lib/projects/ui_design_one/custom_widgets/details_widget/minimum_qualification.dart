import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/utiles/all_texts/my_texts.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class MinimumQualification extends StatelessWidget{
  final List<String> _minQuali;

  MinimumQualification({required List<String> minQual}): _minQuali = minQual;

  @override
  Widget build(BuildContext context){
    final double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child:
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text('Minimum Qualification', style: pageHeading.copyWith(fontSize: 18))
          )),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _minQuali.length,
              itemBuilder: (context, index){
                return Container(
                    alignment: Alignment.topLeft,
                    margin:const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('*', style: pageHeading),
                          ),
                          Container(
                              padding: const EdgeInsets.only(left: 10),
                              width: width-50,
                              child: Text(
                                _minQuali[index],
                                style: jobDesTextStyle,
                                overflow: TextOverflow.fade,
                              )
                          )
                        ]
                    )
                );
              }
            )
          ),


        ]
      )
    );
  }
}