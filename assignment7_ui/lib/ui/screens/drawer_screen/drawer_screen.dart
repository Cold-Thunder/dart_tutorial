import 'package:assignment7_ui/config/models/personal_profile_item_model.dart';
import 'package:assignment7_ui/config/utiles/personalProfileDatas.dart';

import 'package:assignment7_ui/ui/screens/personal_profile_screen/widgets/box_widget.dart';
import 'package:assignment7_ui/ui/screens/personal_profile_screen/widgets/personal_profile_top_section.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({super.key});

  final List<PersonalProfileItemModel> homeScreenInfos = PersonalProfileDatas.homeScreens;
  final List<PersonalProfileItemModel> personalInfos = PersonalProfileDatas.profileTopInfos;
  final List<PersonalProfileItemModel> cartInfos = PersonalProfileDatas.profileCartInfos;
  final List<PersonalProfileItemModel> faqSecInfos = PersonalProfileDatas.faqSecInfos;
  final List<PersonalProfileItemModel> logInfo = PersonalProfileDatas.logInfo;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Drawer(
           child: SingleChildScrollView(
             child: Container(
               margin: const EdgeInsets.only(top: 20),
               padding: const EdgeInsets.symmetric(horizontal: 15.0),
               child: SizedBox(
                   width: width,
                   child: Column(
                       children: [
                         PersonalProfileTopSection(),
                         const SizedBox(height: 20),
                         BoxWidget(allDatas: homeScreenInfos, showSub: false,),
                         BoxWidget(allDatas: personalInfos, showSub: false,),
                         BoxWidget(allDatas: cartInfos, showSub: false,),
                         BoxWidget(allDatas: faqSecInfos, showSub: false,),
                         BoxWidget(allDatas: logInfo, showSub: false, replace: true,),
                       ]
                   )
               ),
             ),
           ),
    );
  }
}
