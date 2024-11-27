import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxForRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10))
        )
    );
  }
}