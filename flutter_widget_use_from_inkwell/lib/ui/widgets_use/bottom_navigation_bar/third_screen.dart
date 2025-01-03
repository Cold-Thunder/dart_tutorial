import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
            child: SizedBox(
                child: Column(
                    children: [
                      Text('Third')

                    ]
                )
            )
        )
    );
  }
}
