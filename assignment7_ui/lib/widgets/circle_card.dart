import 'package:flutter/material.dart';

class CircleCard extends StatelessWidget{
  final Color color;

  const CircleCard({required this.color, super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color
      )
    );
  }
}