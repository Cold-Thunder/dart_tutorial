import 'package:assignment7_ui/models/social_media_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleShape extends StatelessWidget{
  final SocialMediaModel model;

  const CircleShape({required this.model, super.key});

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        height: 62,
        width: 62,
        decoration: BoxDecoration(
          color: model.color,
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(model.icon)
      ),
    );
  }
}