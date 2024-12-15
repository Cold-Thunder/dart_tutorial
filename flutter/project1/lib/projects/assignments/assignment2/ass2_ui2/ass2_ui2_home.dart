import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/modules/large_card_module.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/modules/small_card_module.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/images/first_page_images.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/styles/ass2_ui2_text_styles.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/texts/ass2_ui2_all_texts.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/widgets/ass2_ui2_search_bar.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/widgets/heading_text.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/widgets/near_you_card.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/widgets/small_card.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/widgets/small_card_for_discover.dart';

class Ass2UI2Home extends StatelessWidget {
  Ass2UI2Home({super.key});

  final List<SmallCardModule> _topCategories = Ass2UI2AllTexts.smallCardInfos;
  final List<LargeCardModule> _nearYouItems = Ass2UI2AllTexts.nearYouInfos;
  final List<SmallCardModule> _discoverNewItems = Ass2UI2AllTexts.discoverNewPlacesInfo;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: SizedBox(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Container(
                        height: 40,
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          Ass2UI2AllTexts.appBarTitle,
                          style: appBarTitleStyle,
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Ass2UI2AllTexts.appBarInitialLoc,
                                style: appBarSubStyle,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                  height: 20,
                                  child: InkWell(
                                      child: SvgPicture.asset(
                                          FirstPageImages.dropDownIcon),
                                      onTap: () {
                                        if (kDebugMode) {
                                          print('dropdown');
                                        }
                                      })),
                            ],
                          ))
                    ])),
                actions: [
                  InkWell(
                      onTap: () {},
                      child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 41,
                          width: 41,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: AllColors.appBarLogoBorderColor),
                              shape: BoxShape.circle),
                          child: Image.asset(FirstPageImages.appBarLogo)))
                ]),
            body: SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: width,
                    color: AllColors.appBarColor,
                    child: Column(children: [
                      // search bar is here
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          height: 56,
                          child: Row(children: [
                            SizedBox(
                                height: 50,
                                width: width * 0.8,
                                child:
                                    Ass2UI2SearchBar(controller: _controller)),
                            // filter icon is here
                            Container(
                                height: 50,
                                width: 38,
                                margin: const EdgeInsets.only(left: 10),
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: AllColors.searchBarBackColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                        height: 32,
                                        width: 32,
                                        padding: const EdgeInsets.all(4),
                                        child: SvgPicture.asset(
                                            FirstPageImages.filterIcon,
                                            height: 19,
                                            width: 19))))
                          ])),
                      const SizedBox(
                        height: 20,
                      ),
                      // top category heading
                      SizedBox(
                        width: width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                        SizedBox(
                            child: HeadingText(
                                heading: Ass2UI2AllTexts.topCategories)),
                        const Spacer(),
                                // see all section
                        InkWell(
                                onTap: () {},
                                child: SizedBox(
                                    child: Row(children: [
                                      // see all text
                                  Text(Ass2UI2AllTexts.seeAll,
                                      style: seeAllStyleOrange),
                                      // arrow
                                      Transform.rotate(
                                          angle: 1.570,
                                      child: Icon(
                                          Icons.arrow_drop_up,
                                        size: 22,
                                        color: AllColors.seaAllColor
                                      ))
                                ]))),
                                const SizedBox(width: 10)
                      ])),
                      // top catergories
                      Container(
                          margin: const EdgeInsets.only(top: 20),
                        height: 142,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _topCategories.length,
                          itemBuilder: (context, index){
                            return SmallCard(
                                cardInfo: _topCategories[index],
                                showBorder: false
                            );
                          }
                        )
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      // near you heading
                      SizedBox(
                          width: width,
                          child: HeadingText(heading: Ass2UI2AllTexts.nearYou,)
                      ),
                      const SizedBox(height: 15),
                      // near you section
                      SizedBox(
                        height: 331,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _nearYouItems.length,
                          itemBuilder: (context, index){
                            return NearYouCard(cardInfo: _nearYouItems[index]);
                          }
                        )
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                          width: width,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    child: HeadingText(
                                        heading: Ass2UI2AllTexts.discoverNewPlaces)),
                                const Spacer(),
                                // see all section
                                InkWell(
                                    onTap: () {},
                                    child: SizedBox(
                                        child: Row(children: [
                                          // see all text
                                          Text(Ass2UI2AllTexts.seeAll,
                                              style: seeAllStyleBlack),
                                          // arrow
                                          Transform.rotate(
                                              angle: 1.570,
                                              child: Icon(
                                                  Icons.arrow_drop_up,
                                                  size: 22,
                                                  color: AllColors.headingColor
                                              ))
                                        ]))),
                                const SizedBox(width: 10)
                              ])),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 142,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _discoverNewItems.length,
                          itemBuilder: (context, index){
                            return SmallCardForDiscover(
                                cardInfo: _discoverNewItems[index]);
                          }
                        )
                      ),
                      const SizedBox(height: 30)

                    ])))));
  }
}
