import 'package:assignment7_ui/models/personal_profile_item_model.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/widgets/personal_profile_widgets/icon_shape_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileListTiles extends StatelessWidget {
  final PersonalProfileItemModel model;
  const ProfileListTiles({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>model.widget!));
      },
      leading: SizedBox(
          height: 40,
          width: 40,
          child: IconShapeWidget(svgIcon: model.icon)
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(model.title, style: TextStyles.headingTextStyle.copyWith(
            fontSize: 16,
          )),
        ],
      ),
      trailing: SvgPicture.asset(AllImages.rightArrow, height: 8, width: 4),
    );
  }
}
