import 'package:flutter/material.dart';
import 'package:widgets_use/config/models/custom_bottom_nev_model.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_clip_paths/appbar_design_clippath.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/pages/add_page.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/pages/call_page.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/pages/chat_page.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/pages/home_page.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/pages/message_page.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/widgets/bottom_nav_icon.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/widgets/positioned_icon_box.dart';

class CustomBottomNavbarClippath extends StatefulWidget {
  const CustomBottomNavbarClippath({super.key});

  @override
  State<CustomBottomNavbarClippath> createState() =>
      _CustomBottomNavbarClippathState();
}

class _CustomBottomNavbarClippathState
    extends State<CustomBottomNavbarClippath> {
  late Offset tapDownLocation = Offset(50, 0);
  // final PageController _pageController = PageController();

  int index = 0;
  int clickedInd = 0;

  List<CustomBottomNevModel> bottomNavItems = [
    CustomBottomNevModel(iconData: Icons.home, index: 0),
    CustomBottomNevModel(iconData: Icons.message, index: 1),
    CustomBottomNevModel(iconData: Icons.add, index: 2),
    CustomBottomNevModel(iconData: Icons.call, index: 3),
    CustomBottomNevModel(iconData: Icons.chat, index: 4),
  ];

  List<Widget> screens = [
    HomePage(),
    ChatPage(),
    AddPage(),
    CallPage(),
    MessagePage()
  ];

  iconIdentifier(TapDownDetails details, int ind) {
    setState(() {
      tapDownLocation = details.globalPosition;
      clickedInd = ind;
    });
    // _pageController.jumpToPage(ind);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.transparent,
      appBar: AppBar(title: Text('Custom Bottom NavBar')),
      // bottomNavigationBar: Container(
      //   alignment: Alignment.center,
      //   width: width,
      //   height: 65,
      //   child: Stack(
      //     clipBehavior: Clip.none,
      //     children: [
      //       ClipPath(
      //         clipper: AppBarDesignClipPath(tapLocation: tapDownLocation),
      //         child: Container(
      //           margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
      //           width: width*0.95,
      //           height: 60,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(12),
      //               color: AllColors.purple,
      //               boxShadow: [
      //                 BoxShadow(
      //                   color: AllColors.shadowBlack,
      //                   offset: Offset(1,1),
      //                   blurRadius: 12,
      //                 )
      //               ]
      //           ),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: bottomNavItems.map((item){
      //               return BottomNavIcon(
      //                   bottomNevModel: item,
      //                   func: iconIdentifier,
      //                   clickInd: clickedInd);
      //             }).toList(),
      //
      //           ),),
      //       ),
      //       Positioned(
      //           top: -7,
      //           left: tapDownLocation.dx - 22,
      //           child: PositionedIconBox(
      //               iconData: bottomNavItems[clickedInd].iconData)),
      //     ],
      //   ),
      // ),
      body:Stack(
        children: [
          screens[clickedInd],
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              width: width,
              height: 65,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipPath(
                    clipper: AppBarDesignClipPath(tapLocation: tapDownLocation),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
                      width: width*0.95,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AllColors.purple,
                          boxShadow: [
                            BoxShadow(
                              color: AllColors.shadowBlack,
                              offset: Offset(1,1),
                              blurRadius: 12,
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: bottomNavItems.map((item){
                          return BottomNavIcon(
                              bottomNevModel: item,
                              func: iconIdentifier,
                              clickInd: clickedInd);
                        }).toList(),

                      ),),
                  ),
                  Positioned(
                      top: -7,
                      left: tapDownLocation.dx - 22,
                      child: PositionedIconBox(
                          iconData: bottomNavItems[clickedInd].iconData)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
