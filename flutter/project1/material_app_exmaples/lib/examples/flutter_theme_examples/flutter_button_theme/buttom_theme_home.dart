import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonThemeHome extends StatelessWidget{
  final button1Key = Key('button1');
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Theme home')
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  child: const Text('Buttom theme', style: TextStyle(
                    fontSize: 28,
                    color: Colors.purple
                  ))
                ),
                Container(
                  height: 45,
                  child: ElevatedButton(
                    child: Text('Theme Applied'),
                    onPressed: (){
                      print('Theme applied');
                    }
                  )
                ),
              ]
            )
        )
      )
    );
  }
}