import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/cupertino.dart';

class PersonalProfileTopSection extends StatelessWidget {
  const PersonalProfileTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        spacing: 15,
        children: [
          GreyCard(height: 100, width: 100, borderRad: 50, color: AllColors.profileCircleOrange,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AllTexts.name, style: TextStyles.profileNameStyle),
              Text(AllTexts.bioText, style: TextStyles.hintTextStyle)
            ],
          )
        ],
      )
    );
  }
}
