import 'package:flutter/material.dart';
import 'package:project1/examples/works_with_text/utils/text_styles.dart';
import 'package:project1/utiles/textStyles/my_text_styles.dart';

class ImageUseHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Use', style: appBarTitleStyle)
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.yellow
                ),
                child: Text('FadeInImage Widget', style: headingStyle),
              ),
              Container(
                height: 200,
                width: 200,
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color:Colors.red
                ),
                // using fadeInImage
                child: const FadeInImage(
                    placeholder: AssetImage('assets/images/hemal.jpeg'),
                    image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png'),
                    fadeInDuration: const Duration(seconds: 2),
                  fit: BoxFit.cover,
                )
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Image.asset(
                    'assets/images/hemal.jpeg',
                  fit: BoxFit.cover
                )
              )

            ]
          )
        )
      )
    );
  }
}