import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerUse extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // using scaffold
    return Scaffold(
      appBar: AppBar(
        title:const Text('Using Container', style: TextStyle(
          fontSize:22,
          color: Colors.white
        )),
        backgroundColor: Colors.blue
      ),
      body: SafeArea(
        // using container
        child: Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: const Text('We are practicing container',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ))
        )
      )
    );
  }
}

// Assignment9
// flutter architecture