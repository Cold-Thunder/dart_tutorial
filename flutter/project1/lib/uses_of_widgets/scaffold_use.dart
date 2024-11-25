import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //here we are using scaffold
    return Scaffold(
      // adding appbar
      appBar: AppBar(
        title: const Text('Scaffold use',
            style: TextStyle(fontSize: 24, color: Colors.white)),
        backgroundColor: Colors.purple,
        elevation: 3,
      ),
      // adding floating action button
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Adding');
          },
          backgroundColor: Colors.purple,
          child: Container(
            child: const Icon(Icons.add, size: 24, color: Colors.white),
          )),

      //adding body
      body: SafeArea(
        child: Container(
          child: const Text('This is scaffold practice for flutter app', style: TextStyle(
            fontSize:30,
            color: Colors.black
          ))
        )
      )
    );
  }
}
