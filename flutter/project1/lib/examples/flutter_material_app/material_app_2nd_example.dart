import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Material2ndExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('2nd Example', style: TextStyle(
          fontSize: 24,
          color: Colors.white
        )),
        backgroundColor: Colors.purple
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: const Text('Material App', style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue
                ))
              )
            ]
          )
        )
      )
    );
  }
}