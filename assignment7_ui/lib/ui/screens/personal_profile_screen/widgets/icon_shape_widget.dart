import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconShapeWidget extends StatelessWidget {
  final String svgIcon;

  const IconShapeWidget({required this.svgIcon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: AllColors.appbarWhite,
        shape: BoxShape.circle
      ),
      child: SvgPicture.asset( svgIcon,height: 16.9, width: 16.9),
    );
  }
}
