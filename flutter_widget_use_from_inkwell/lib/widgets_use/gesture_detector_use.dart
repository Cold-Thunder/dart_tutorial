import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GestureDetectorUse extends StatefulWidget {
  const GestureDetectorUse({super.key});

  @override
  State<GestureDetectorUse> createState() => _GestureDetectorUseState();
}

class _GestureDetectorUseState extends State<GestureDetectorUse> {
  double? _topPosition;
  double? _leftPosition;

  final double _positionTop2 = 100;
  final double _positionLeft2 = 100;

  double circleHW = 40;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Gesture Director Use')),
      body: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              // onTapDown: (TapDownDetails details){
              //     if (kDebugMode) {
              //       print(details.globalPosition.dx);
              //     }
              //     if (kDebugMode) {
              //       print(details.globalPosition.dy);
              //     }
              // },
              // onPanDown: (DragDownDetails details){
              //   Offset position = details.globalPosition;
              //   if (kDebugMode) {
              //     print('PanDown: ${position.dx}, ${position.dy}');
              //   }
              // },
              // onPanStart: (DragStartDetails details){
              //   Offset position = details.globalPosition;
              //   if (kDebugMode) {
              //     print('x: ${position.dx}, y: ${position.dy}');
              //   }
              // },
              onPanUpdate: (DragUpdateDetails details) {
                Offset position = details.globalPosition;
                setState((){
                  _topPosition = position.dy - 100;
                  _leftPosition = position.dx - 15;
                  if(position.dx == _positionLeft2 && position.dy == _positionTop2){
                    _leftPosition = _positionLeft2;
                    _topPosition = _positionTop2;
                    circleHW = 200;
                  }else{
                    circleHW = 40;
                  }
                });
                if (kDebugMode) {
                  print('x: ${position.dx}, y: ${position.dy}');
                }
              },
              // onVerticalDragStart: (DragStartDetails details){
              //   var position = details.globalPosition;
              //   if (kDebugMode) {
              //     print('x: ${position.dx}, y: ${position.dy}');
              //   }
              // },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: width,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Gesture 1',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),

                  Positioned(
                    top: _positionTop2,
                    left: _positionLeft2,
                    child: Container(
                      height: circleHW,
                      width: circleHW,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.circle
                      )
                    )
                  ),
                  Positioned(
                    top: _topPosition ?? 0,
                    left: _leftPosition ?? 0,
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
