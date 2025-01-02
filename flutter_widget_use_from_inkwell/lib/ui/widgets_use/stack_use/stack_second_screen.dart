import 'package:flutter/material.dart';

class StackSecondScreen extends StatelessWidget {
  const StackSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack 2nd Screen')
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        shape: BoxShape.circle
                      )
                    ),
                    Positioned(
                      top: 50,
                        left: 50,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                          )
                        )
                    ),
                    Positioned(
                      top: 50,
                        right: 50,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                          )
                        )
                    ),
                    Positioned(
                      left: 50,
                      bottom: 30,
                      child: Transform.rotate(
                        angle: 1.57,
                        child: Container(
                          height: 100,
                          width: 100,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            color: Colors.black,
                          )
                        ),
                      ),
                    )
                  ],
                ),
            Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        shape: BoxShape.circle
                      )
                    ),
                    Positioned(
                      top: 50,
                        left: 50,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                          )
                        )
                    ),
                    Positioned(
                      top: 50,
                        right: 50,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                          )
                        )
                    ),
                    Positioned(
                      left: 50,
                      bottom: 0,
                      child: Transform.rotate(
                        angle: -1.57,
                        child: Container(
                          height: 100,
                          width: 100,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            color: Colors.black,
                          )
                        ),
                      ),
                    )
                  ],
                ),
            Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        shape: BoxShape.circle
                      )
                    ),
                    Positioned(
                      top: 50,
                        left: 50,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                          )
                        )
                    ),
                    Positioned(
                      top: 50,
                        right: 50,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                          )
                        )
                    ),
                    Positioned(
                      left: 75,
                      bottom: 30,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle
                        )
                      ),
                    )
                  ],
                ),
          ],
        ),
      )
    );
  }
}
