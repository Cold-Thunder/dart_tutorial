import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/filter_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppbarActionButton extends StatelessWidget {
  const AppbarActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      onTap: (){
        showGeneralDialog(
          context: context,
            barrierDismissible: true,
            barrierLabel: MaterialLocalizations.of(context)
                .modalBarrierDismissLabel,
          pageBuilder: (BuildContext context, animation, secondaryAnimation){
            return FilterDialog();
          }
        );
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AllColors.backIconGrey
        ),
        child: SvgPicture.asset(AllImages.dotMenu, height: 2, width: 16)
      ),
    );
  }
}
