import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project1/projects/ui_design_one/custom_widgets/job_type_card.dart';
import 'package:project1/projects/ui_design_one/utiles/all_texts/my_texts.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class BlogPage extends StatelessWidget{
  List<String> types = NewHiringTexts.newHiringJobPosts[0]['types'];
  @override
  Widget build(BuildContext context){
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
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png')
              )),
              const SizedBox(
                height: 10
              ),
              // title part
              Container(
                width: width,
                padding: const EdgeInsets.only(bottom: 15),
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
                      child: Text('Senior UX Designer', style: pageHeading.copyWith(
                        fontSize: 24
                      ))
                    ),
                    Container(
                      child: Text(
                        'Instagram',
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
                      child: Text('Menio Park, California',
                          style: pageNormalText.copyWith(fontSize: 22)
                      ),
                    ),
                    // salary
                    Container(
                      child: Text('\$250k Year',
                          style: pageNormalText.copyWith(fontSize: 20, color: Colors.deepOrange)
                      )
                    ),
                    // job type
                     Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: types.map((item){
                          return JobTypeCard(title: item);
                        }).toList(),
                      )
                    )
                  ]
                )
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