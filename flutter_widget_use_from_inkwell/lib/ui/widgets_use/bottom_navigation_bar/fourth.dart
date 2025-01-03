import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
            child: SizedBox(
                child: Column(
                    children: [
                      Text('Fourth')

                    ]
                )
            )
        )
    );
  }
}
