import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project1/examples/works_with_text/utils/text_styles.dart';
import 'package:project1/projects/ui_design_one/custom_widgets/details_widget/job_des.dart';
import 'package:project1/projects/ui_design_one/custom_widgets/details_widget/minimum_qualification.dart';
import 'package:project1/projects/ui_design_one/custom_widgets/job_type_card.dart';
import 'package:project1/projects/ui_design_one/custom_widgets/text_button.dart';
import 'package:project1/projects/ui_design_one/utiles/all_texts/my_texts.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class BlogPage extends StatefulWidget {
  // job details coming for best match card
  final Map _jobDetails;
  BlogPage({required Map jobDetails}): _jobDetails = jobDetails;
  List<String> types = NewHiringTexts.newHiringJobPosts[0]['types'];

  State<BlogPage> createState()=> _BlogPageState();

}

class _BlogPageState extends State<BlogPage>{
  bool showBor1 = true;
  bool showBor2 = false;


  @override
  Widget build(BuildContext context){
    Map jobDetails = widget._jobDetails;
    List<String> jobTypes = jobDetails['types'];
    final width = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, size: 20)
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child:
        Container(
          height: 50,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(1,-8),
                  color: Colors.white,
                  blurRadius:20,
                  spreadRadius: 5
                )
              ]
            ),
            child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          onPressed:(){
            print('Applying');
          },
          child: Text('Apply Now', style: textPageHeading.copyWith(
            fontSize: 22,
              color: Colors.white))
        ))
      ),
      body: SingleChildScrollView(
        child:
        Container(
          child: Column(
            children: [
              // heading part
              Container(
                color: Colors.grey[100],
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
              //logo part
              Container(
                width: width,
                child: Container(
                height: 60,
                width: 60,
                child: Image.network("${jobDetails['image']}")
              )),
              const SizedBox(
                height: 10
              ),
              // title part
              Container(
                width: width-30,
                padding: const EdgeInsets.only(bottom: 15,),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(0, 0, 0, 0.1)
                    )
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      child: Text('${jobDetails['title']}', style: pageHeading.copyWith(
                        fontSize: 24
                      ))
                    ),
                    Container(
                      child: Text(
                        '${jobDetails['company']}',
                        style: pageNormalText.copyWith(
                            fontSize: 18,
                            color: Colors.black
                        )
                      )
                    )
                  ],
                )
              ),
              // semi details part
              Container(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Container(
                      child: Text('${jobDetails['location']}',
                          style: pageNormalText.copyWith(fontSize: 22)
                      ),
                    ),
                    // salary
                    Container(
                      child: Text('${jobDetails['salary']}',
                          style: pageNormalText.copyWith(fontSize: 20, color: Colors.deepOrange)
                      )
                    ),
                    // job type
                     Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: jobTypes.map((item){
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: JobTypeCard(title: item)
                          );
                        }).toList(),
                      )
                    )
                  ]
                )
              )
                  ]
                )
              ),
              // body section
              Container(
                padding:const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                        children:[
                          InkWell(
                            onTap: (){
                              setState((){
                                showBor1 = true;
                                showBor2 = false;
                              });
                            },
                            child: TextButtonUse(title: 'Job Description', showBorder: showBor1,)
                          ),
                          InkWell(
                            onTap: (){
                                setState((){
                                  showBor1 = false;
                                  showBor2 = true;
                                 });
                            },
                            child: TextButtonUse(title: 'Requirement', showBorder: showBor2)
                          )
                        ]
                      )
                    ),
                    //details about job
                    Container(
                      width: width,
                       // alignment: Alignment.centerLeft,
                       child: JobDes(jobDetails: jobDetails['job_des'])
                    ),
                    const SizedBox(
                      height: 20
                    ),
                    // minimum qualification section
                    Container(
                      width: width,
                      child: MinimumQualification(minQual: jobDetails['min_quali'],)
                    )
                  ]
                )
              )
            ],
          )
        )
      )
    );
  }
}