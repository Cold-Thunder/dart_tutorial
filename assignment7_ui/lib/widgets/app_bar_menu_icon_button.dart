import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarMenuIconButton extends StatelessWidget{
  final Color? color;
  final Widget? widget;
  const AppBarMenuIconButton({this.color, this.widget, super.key});

  @override
  Widget build(BuildContext context){
    return InkWell(
      borderRadius: BorderRadius.circular(22.5),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>widget!));
      },
      child: Container(
          alignment: Alignment.center,
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: color ?? AllColors.appbarWhite,
              shape: BoxShape.circle
          ),
          child: SvgPicture.asset(AllImages.dotMenu, height: 6, width: 16)
      ),
    );
  }
}