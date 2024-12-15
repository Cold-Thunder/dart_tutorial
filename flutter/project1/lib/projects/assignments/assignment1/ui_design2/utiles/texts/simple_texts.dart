import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/modules/bottom_items_data_module.dart';

class SimpleTexts{
  static String appTitle = 'Assignment 1 UI 2';
  static String homeTitle = 'Welcome back!';

  static List<Map<String,dynamic>> topItems = [
    {
      'icon': Icons.person,
      'title': 'Find People'
    },
    {
      'icon': Icons.email,
      'title': 'Invite friend'
    },
    {
      'icon': Icons.group,
      'title': 'Join Group'
    }
  ];

  static List<BottomItemDataModule> bottomItems = [
    BottomItemDataModule(
        image: 'assets/images/hemal.jpeg',
        title: 'Silke Herz',
        subtitle:'Hey! Are you free to work later?',
        time: '12:23',
        mesCount: 2),

    BottomItemDataModule(
        image:'assets/images/hemal.jpeg',
        title: 'Dirk Ziegler',
        subtitle: 'Hey! Are you free to work later?',
        time:'11:43',
        mesCount: 0),

   BottomItemDataModule(
       image: 'assets/images/hemal.jpeg',
       title: 'Robert Mauer',
       subtitle: 'Hey! Are you free to work later?',
       time: '11:24',
       mesCount: 1),
    BottomItemDataModule(
        image: 'assets/images/hemal.jpeg',
        title: 'Kristin Eichel',
        subtitle: 'Hey! Are you free to work later?',
        time:'09:23',
        mesCount: 0),
    BottomItemDataModule(
        image: 'assets/images/hemal.jpeg',
        title: 'Marina Schulze',
        subtitle: 'Hey! Are you free to work later?',
        time: '20:32',
        mesCount: 0),

    BottomItemDataModule(
        image:'assets/images/hemal.jpeg',
        title: 'Justin Felix',
        subtitle: 'Hey! Are you free to work later?',
        time: '12:23',
        mesCount: 0),

  ];
}