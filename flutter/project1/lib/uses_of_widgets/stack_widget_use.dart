import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidgetUse extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget', style: TextStyle(
          fontSize: 22,
          color: Colors.white
        ),),
          backgroundColor: Colors.lightGreen
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text('Stack Widget use', style: TextStyle(
                  fontSize: 30,
                  color: Colors.red
                ),
                textAlign: TextAlign.center)
              ),
              Container(
                width: 300,
                height: 400,
                color: Colors.orange,
                child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(1,2),
                          blurRadius: 10,
                          spreadRadius: 3
                        )
                      ]
                    )
                  ),
                  Positioned(
                    top: 80,
                    left: 100,
                    child: Container(
                        height: 180,
                        width: 180,
                        decoration:BoxDecoration(
                            color: Colors.purple,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              offset: Offset(1,1),
                              spreadRadius: 3,
                              blurRadius: 10
                            )
                          ]
                        )
                    )
                  ),
                  Positioned(
                    top: 140,
                    left: 50,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(1,2),
                            blurRadius: 10,
                            spreadRadius: 3
                          )
                        ]

                      )
                    )
                  )
                ]
              ))
            ]
          )
        )
      )
    );
  }
}