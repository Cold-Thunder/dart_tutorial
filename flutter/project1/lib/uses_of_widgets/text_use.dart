import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextUse extends StatelessWidget{
  // calling text style
  TextStyle style =const TextStyle(
    fontSize: 22,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget', style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        )),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Container(
          width: width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // using text align
                Container(
                  width: width,
                  color: Colors.greenAccent,
                  child: Text('Text Align', style:style,
                      textAlign: TextAlign.center
                  )
                ),
                Container(
                  height: 50,
                  color: Colors.lightBlueAccent,
                  child: Text('Text Direction Text Direction Text Direction Text Direction Text Direction Text Direction Text Direction ', style: style,
                  overflow: TextOverflow.visible
                ))
              ]
          )
        )
      )
    );
  }
}