
import 'package:flutter/material.dart';

class InkWellUse extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Use'),
      ),
      body: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                print('Using inkwell');
              },
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red
              ),
            )
          ]
        ),
      )
    );
  }
}