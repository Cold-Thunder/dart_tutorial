
import 'package:flutter/material.dart';

class ClipperMethod extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double radius = 30;
    Path path = Path();

    // left section
    path.moveTo(0, radius);
    path.lineTo(0, size.height-70-radius);
    path.arcToPoint(Offset(radius, size.height-60), radius: Radius.circular(radius), clockwise: false);

    // middle section
    path.lineTo(size.width/2-70, size.height-60);
    // path.arcToPoint(Offset(size.width/2-35, size.height-40), radius: Radius.circular(50), clockwise: true);
    // path.arcToPoint(Offset(size.width/2+35, size.height-40), radius: Radius.circular(radius), clockwise: false);
    // path.arcToPoint(Offset(size.width/2+70, size.height-70), radius: Radius.circular(50), clockwise: true);

    Offset leftContOne = Offset(size.width/2-30, size.height-60);
    Offset leftContTwo = Offset(size.width/2-45, size.height-20);
    path.cubicTo(leftContOne.dx, leftContOne.dy, leftContTwo.dx, leftContTwo.dy, size.width/2, size.height-20);

    Offset rightContOne =Offset(size.width/2+45, size.height-20);
    Offset rightContTwo = Offset(size.width/2+30,size.height-60);
    path.cubicTo(rightContOne.dx, rightContOne.dy, rightContTwo.dx, rightContTwo.dy, size.width/2+70, size.height-60);


    path.lineTo(size.width/2+70, size.height-60);

    path.lineTo(size.width-radius, size.height-60);



    // right line
    path.arcToPoint(Offset(size.width, size.height-60-radius), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(size.width, 20+radius);

    // top section
    path.arcToPoint(Offset(size.width-radius, 20), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(radius, 0);

    path.arcToPoint(Offset(0, radius), radius: Radius.circular(radius), clockwise: false);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return true;
  }
}