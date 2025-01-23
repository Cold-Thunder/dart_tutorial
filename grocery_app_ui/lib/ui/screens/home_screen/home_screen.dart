import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('home Screen')
      ),
        body: SingleChildScrollView(
       child: Container(
         child: Column(
           children: [
             Text('HOme page')
           ]
         ),
       )
    )
    );
  }
}
