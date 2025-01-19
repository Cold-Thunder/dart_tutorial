import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  final String heroTag;
  final String image;

  const HeroScreen({required this.heroTag, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero sreen")
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Hero(
              tag: heroTag,
              child: Container(
                height: 250,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(image),
                    fit: BoxFit.fill
                  )
                )
              )
            )
          ]
        ),
      )
    );
  }
}
