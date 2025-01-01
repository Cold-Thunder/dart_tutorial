import 'dart:async';

import 'package:flutter/material.dart';

class ProgressBarUse extends StatefulWidget{

  @override
  State<ProgressBarUse> createState() => _ProgressBarUseState();
}

class _ProgressBarUseState extends State<ProgressBarUse> {

  double _progress = 0.0;

  void progressUpdater(){
      Timer timer = Timer.periodic(Duration(milliseconds: 500), (Timer t) {
        setState(() {
          _progress += 0.05;
        });
        print(_progress);
        if(_progress >= 1){
          t.cancel();
        }
      });

  }

  @override
  void initState(){
    super.initState();
    if(_progress < 1){
      progressUpdater();
    }

  }


  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress bar widget')
      ),
      body: Container(
        width: width,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 10,
              width: width,
              child: LinearProgressIndicator(
                backgroundColor: Colors.yellow,
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                value: _progress,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              )
            ),
            SizedBox(height: 100),
            SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                strokeCap: StrokeCap.round,
                value: _progress,
                backgroundColor: Colors.grey,
                color: Colors.red,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)
              )
            )
          ]
        )
      )
    );
  }
}