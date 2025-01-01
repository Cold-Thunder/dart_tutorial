import 'package:flutter/material.dart';

class ListWheelScrollViewUse extends StatelessWidget {
  ListWheelScrollViewUse({super.key});

  final List numbers = [
    1,
    2,
    2,
    3,
    3,
    4,
    4,
    5,
    5,
    6,
    7,
    7,
    8,
    9,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListWheelScrollView')),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              Text(
                'Vertical Wheel',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 500,
                child: ListWheelScrollView(
                  itemExtent: 300,
                  children: numbers
                      .map((item) => Container(
                          alignment: Alignment.center,
                          height: 300,
                          width: double.infinity,
                          color: Colors.red,
                          child: Text(item.toString(),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30))))
                      .toList(),
                ),
              ),
              Text('Horizontal Wheel', style: TextStyle(
                fontSize: 30,
              ),),
              Transform.rotate(
                angle: -1.57,
                child: SizedBox(
                  height: 200,
                  width: 400,
                  child: ListWheelScrollView(
                    itemExtent: 100,
                    children:numbers
                        .map((item) => Container(
                        alignment: Alignment.center,
                        height: 300,
                        width: 100,
                        color: Colors.red,
                        child: Text(item.toString(),
                            style: TextStyle(
                                color: Colors.white, fontSize: 30))))
                        .toList(),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
