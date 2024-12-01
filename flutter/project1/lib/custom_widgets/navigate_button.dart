import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigateButton extends StatelessWidget{
  final String title;
  // taking parameter as a widget for navigating to that page
  final Widget navigateTo;
  const NavigateButton({required this.title, required this.navigateTo});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 55,
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> navigateTo));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        child: Text(title, style: const TextStyle(
          fontSize: 22,
          color: Colors.white
        ))
      )
    );
  }
}