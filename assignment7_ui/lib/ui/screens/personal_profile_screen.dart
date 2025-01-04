import 'package:assignment7_ui/config/models/personal_profile_item_model.dart';
import 'package:assignment7_ui/ui/screens/edit_profile_screen.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/personalProfileDatas.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/personal_profile_text.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/personal_profile_widgets/box_widget.dart';
import 'package:assignment7_ui/ui/widgets/personal_profile_widgets/personal_profile_top_section.dart';
import 'package:flutter/material.dart';

class PersonalProfileScreen extends StatelessWidget {
  PersonalProfileScreen({super.key});

  List<PersonalProfileItemModel> personalInfos = PersonalProfileDatas.personalProfileInfos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: PersonalProfileText.personalProAppBar),
        actions: [
          // edit button
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: AllColors.buttonOrange
                  )
                )
              ),
              child: Text(
                PersonalProfileText.edit,
                style: TextStyles.dropDownTextStyle.copyWith(
                  color: AllColors.buttonOrange
                )
              )
            )
          ),
          const SizedBox(width: 15)
        ]
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            PersonalProfileTopSection(),
            const SizedBox(height: 20),
            BoxWidget(allDatas: personalInfos)
          ]
        )
      )
    );
  }
}
