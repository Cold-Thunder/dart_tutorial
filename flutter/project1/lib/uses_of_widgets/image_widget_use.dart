import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidgetWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image widget use'),
      ),
      body: SafeArea(
        child:Container(
          child: Column(
            children: [
              Container(
                child: const Text(
                  'Image Widget use',
                   style: TextStyle(
                     fontSize: 26,
                     color: Colors.black
                   )
                )
              ),
              Container(
                height: 100,
                width: 100,
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/hemal.jpeg',
                  image: 'https://upload.wikimedia.org/wikipedia/commons/f/f2/Logo_Twitter.png'
                )
              )
            ]
          )
        )
      )
    );
  }
}