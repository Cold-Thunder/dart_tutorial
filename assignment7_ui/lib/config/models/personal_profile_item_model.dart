import 'package:flutter/material.dart';

class PersonalProfileItemModel {
  final String icon;
  final String title;
  final String? subTitle;
  final Widget? widget;

  PersonalProfileItemModel({
    required this.icon,
    required this.title,
    this.widget,
    this.subTitle});
}
