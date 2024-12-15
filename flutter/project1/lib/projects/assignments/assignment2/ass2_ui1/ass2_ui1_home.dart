import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/modules/items_card_information.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/texts/ass2_ui1_texts.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/widgets/heading.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/widgets/list_item_card.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/widgets/search_bar_design.dart';

class Ass2UI1Home extends StatelessWidget {
  Ass2UI1Home({super.key});
  // search bar controller
  final TextEditingController _searchBarCont =TextEditingController();
  //users message list
  final List<ItemsCardInformation> _usersMessage = Ass2UI1Texts.usersMessage;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('BackIcon');
                  }
                },
                icon: Icon(Icons.arrow_back,
                    size: 24, color: Ass2UI1AllColors.myBlack)),
            actions: [
              IconButton(
                  onPressed: () {
                    if (kDebugMode) print('Menu');
                  },
                  icon: Icon(Icons.menu_sharp,
                      size: 24, color: Ass2UI1AllColors.myBlack))
            ]),
        floatingActionButton: Container(
          transform: Matrix4.rotationZ(-0.758),
          child: FloatingActionButton(
              onPressed: (){
                if(kDebugMode) print('floating action button');
              },
              backgroundColor: Ass2UI1AllColors.myBlack,
            child:Transform.rotate(
              angle: 3.1416/4,
              child: SvgPicture.asset('assets/icons/ass2_ui1_icons/send.svg')
            )
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SingleChildScrollView(
            child:Container(
                width: width,
                height: height,
                color: Ass2UI1AllColors.appBarColor,
                child: Stack(children: [
                  Positioned(
                      top: 30,
                      left: width / 2,
                      child: Container(
                          height: 575.52,
                          width: 651.49,
                          transform: Matrix4.rotationZ(0.785),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(152),
                              border: Border.all(
                                  width: 2,
                                  color: Ass2UI1AllColors.backShapeColor)))),
                  Positioned(
                      top: -40,
                      left: width / 2,
                      child: Container(
                          height: 575.52,
                          width: 651.49,
                          transform: Matrix4.rotationZ(0.785),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(152),
                              border: Border.all(
                                  width: 2,
                                  color: Ass2UI1AllColors.backShapeColor)))),
                  Positioned(
                      top: 90,
                      left: width / 2,
                      child: Container(
                          height: 575.52,
                          width: 651.49,
                          transform: Matrix4.rotationZ(0.785),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(152),
                              gradient: LinearGradient(colors: [
                                Ass2UI1AllColors.backShapeColor,
                                Ass2UI1AllColors.backShapeRedColor
                              ])))),
                  Container(
                    height: height,
                    width: width,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        // heading
                        Heading(),
                        // searchbar
                        SearchBarDesign(searchController: _searchBarCont),
                        // items list
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          height: height*0.7,
                          child: ListView.builder(
                            itemCount: _usersMessage.length,
                            itemBuilder: (context, index){
                              return ListItemCard(inform: _usersMessage[index]);
                            }
                          )
                        )
                      ]
                    )
                  )
                ]))));
  }
}
