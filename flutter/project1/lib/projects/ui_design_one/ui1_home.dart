import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project1/projects/ui_design_one/custom_widgets/best_match_card.dart';
import 'package:project1/projects/ui_design_one/custom_widgets/text_input_field.dart';
import 'package:project1/projects/ui_design_one/utiles/all_texts/my_texts.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class UI1Home extends StatelessWidget {
  TextEditingController _searchCont = TextEditingController();

  List<Map> jobPosts = BestMatchCardsTexts.jobPosts;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: RichText(
              text: TextSpan(text: 'Hire', style: appBarTitle, children: [
            TextSpan(
                text: 'me',
                style: appBarTitle.copyWith(color: Colors.lightBlueAccent))
          ])),
          actions: [
            InkWell(
                onTap: () {
                  print('Profil done');
                },
                child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/hemal.jpeg',
                            fit: BoxFit.cover)))),
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: width * 0.8,
                          child: Text(
                            MyTexts.homePageHeading,
                            style: pageHeading,
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                  // searchbar section
                  Container(
                    height: 50,
                    child: TextInputFieldForUse(textCont: _searchCont),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //best match section
                  Container(
                      child: Column(children: [
                    Container(
                      width: width,
                        child: Text(MyTexts.bestMatchHeading,
                            style: pageHeading.copyWith(fontSize: 26),
                            textAlign: TextAlign.left)),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 275,
                      alignment: Alignment.center,
                      child:
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: jobPosts.length,
                      itemBuilder: (context, index){
                          return BestMatchCard(
                              image: jobPosts[index]['image'],
                              title: jobPosts[index]['title'],
                              company: jobPosts[index]['company'],
                              location: jobPosts[index]['location'],
                              time: jobPosts[index]['time']);
                        })
                    )
                  ])),
                ]))));
  }
}
