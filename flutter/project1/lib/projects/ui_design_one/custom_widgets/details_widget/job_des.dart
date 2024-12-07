import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class JobDes extends StatelessWidget{
  // data is coming from blog page
  final String _jobDetails;
  JobDes({required String jobDetails}): _jobDetails = jobDetails;

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children:[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Job Description:', style: pageHeading.copyWith(fontSize: 18)
            )
          ),
          const SizedBox(height: 10),
          Container(
            child: Text(
              _jobDetails,
                style: jobDesTextStyle
            )
          )
        ]
      )
    );
  }
}