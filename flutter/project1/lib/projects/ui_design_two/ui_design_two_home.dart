import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_two/utiles/colors/colors.dart';
import 'package:project1/projects/ui_design_two/utiles/icons/icons_for_use.dart';
import 'package:project1/projects/ui_design_two/utiles/texts/my_texts.dart';
import 'package:project1/projects/ui_design_two/utiles/texts_styles/text_styles.dart';
import 'package:project1/projects/ui_design_two/widgets/booking_item_tile.dart';
import 'package:project1/projects/ui_design_two/widgets/heading.dart';
import 'package:project1/projects/ui_design_two/widgets/search_field.dart';

class UIDesignTwoHome extends StatelessWidget {
  UIDesignTwoHome({super.key});
  final TextEditingController _controller = TextEditingController();
  final List<Map> items = MyTexts.bookingItems;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        // appBar: AppBar(
        //   leading: IconButton(
        //     icon: homePageAppBarIcon,
        //     onPressed: (){
        //       print('Bar pressed');
        //     }
        //   )
        // ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
      Container(
        margin: const EdgeInsets.only(bottom: 40),
          child: Stack(
        alignment: AlignmentDirectional.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
                color: appBarColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                image: DecorationImage(
                    image: const AssetImage(
                      'assets/images/hemal.jpeg',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.dstATop))),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                  child:
                      IconButton(icon: homePageAppBarIcon, onPressed: () {}))),
          Text(MyTexts.homeTitle, style: appBarTitleStyle),
          Positioned(
              top: 205,
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  height: 50,
                  width: width,
                  color: Colors.transparent,
                  child: SearchField(searchCont: _controller)))
        ],
      )),
      // heading
      Container(
        alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Heading(headingText: MyTexts.bookingHistory)),
                  Container(
                    padding:const EdgeInsets.only(left: 15, right: 15),
                    height: 400,
                    child: ListView.builder(
                      itemCount: MyTexts.bookingItems.length,
                      itemBuilder: (context, index){
                          return BookingItemTile(cardDetails: items[index]);
                      }
                    )
                  )
    ]))));
  }
}
