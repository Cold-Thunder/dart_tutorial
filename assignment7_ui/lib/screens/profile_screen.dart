import 'package:assignment7_ui/models/personal_profile_item_model.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/personalProfileDatas.dart';
import 'package:assignment7_ui/utiles/texts/personal_profile_text.dart';
import 'package:assignment7_ui/widgets/app_bar_menu_icon_button.dart';
import 'package:assignment7_ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/widgets/back_icon.dart';
import 'package:assignment7_ui/widgets/personal_profile_widgets/box_widget.dart';
import 'package:assignment7_ui/widgets/personal_profile_widgets/personal_profile_top_section.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<PersonalProfileItemModel> personalInfos = PersonalProfileDatas.profileTopInfos;
  final List<PersonalProfileItemModel> cartInfos = PersonalProfileDatas.profileCartInfos;
  final List<PersonalProfileItemModel> faqSecInfos = PersonalProfileDatas.faqSecInfos;
  final List<PersonalProfileItemModel> logInfo = PersonalProfileDatas.logInfo;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading:BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: PersonalProfileText.profileTitle),
        actions: [
            AppBarMenuIconButton(color: AllColors.backIconGrey),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                PersonalProfileTopSection(),
                const SizedBox(height: 20),
                BoxWidget(allDatas: personalInfos, showSub: false,),
                BoxWidget(allDatas: cartInfos, showSub: false,),
                BoxWidget(allDatas: faqSecInfos, showSub: false,),
                BoxWidget(allDatas: logInfo, showSub: false,),
              ]
            )
          ),
        )
      )
    );
  }
}
