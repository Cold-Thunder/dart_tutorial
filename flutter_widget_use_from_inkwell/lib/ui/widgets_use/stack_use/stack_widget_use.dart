import 'package:flutter/material.dart';

class StackWidgetUse extends StatelessWidget {
  const StackWidgetUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget use')
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children:[
              // bd flag
              Stack(
                children: [

                ]
              )
            ]
          )
        )
      )
    );
  }
}
