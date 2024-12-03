import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Practice2Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice2 Home')
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: const Text(
                  'This is practice2 home page',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}