import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/texts/simple_texts.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/widgets/bottom_items_sec_card.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/widgets/top_items_card.dart';

class AssOneUIDesignTwo extends StatelessWidget{
  AssOneUIDesignTwo({super.key});

  final List<Map<String, dynamic>> _topItemsList = SimpleTexts.topItems;
  final List<Map<String, dynamic>> _bottomItemsList = SimpleTexts.bottomItems;

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(50),
          child: 
      AppBar(
        title: Text(SimpleTexts.homeTitle),
        actions:[
          IconButton(
            icon: Icon(Icons.search, size: 28, color: myGrey),
            onPressed: (){
              if (kDebugMode) {
                print('adad');
              }
            }
          )
        ]
      )),
      body: SafeArea(
        child: Container(
          width: width,
          decoration: BoxDecoration(
            color: myWhite
          ),
          child: Column(
            children: [
              // top items section
              Container(
                margin:const EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                height: 130,
                clipBehavior: Clip.none,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _topItemsList.length,
                  itemBuilder: (context, index){
                    return TopItemsCard(cardData: _topItemsList[index]);
                  },
                )
              ),
              // bottom items section
              Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 5),
                child: ListView.builder(
                  itemCount: _bottomItemsList.length,
                  itemBuilder: (context, index){
                    return BottomItemsSecCard(listTileDatas: _bottomItemsList[index]);
                  },
                )
              ))
            ]
          )
        )
      )
    );
  }
}