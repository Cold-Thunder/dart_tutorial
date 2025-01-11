import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckButton extends StatelessWidget {
  final String iconSvg;
  final Color color;
  const CheckButton({required this.iconSvg, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      height: 17,
      width: 17,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(iconSvg, height: 10, width: 10),
    );
  }
}
