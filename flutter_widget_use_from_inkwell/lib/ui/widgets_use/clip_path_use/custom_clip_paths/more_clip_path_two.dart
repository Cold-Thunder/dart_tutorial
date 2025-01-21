import 'package:flutter/cupertino.dart';

class MoreClipPathTwo extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double radius = 35;

    Path _path = Path();

    _path.moveTo(radius,0);
    _path.arcToPoint(Offset(0, radius), radius: Radius.circular(radius), clockwise: false);

    _path.lineTo(0, size.height-50-radius);
    _path.arcToPoint(Offset(radius, size.height-50), radius: Radius.circular(radius), clockwise: false);

    _path.lineTo(size.width/2-90, size.height-50);

    // left controller points
    Offset leftContOne = Offset(size.width/2-40, size.height-50);
    Offset leftContTwo = Offset(size.width/2-35, size.height-20);
    // left curve
    _path.cubicTo(leftContOne.dx, leftContOne.dy, leftContTwo.dx, leftContTwo.dy, size.width/2, size.height-20);

    // right controller points
    Offset rightContOne = Offset(size.width/2+35, size.height-20);
    Offset rightContTwo = Offset(size.width/2+40, size.height-50);
    _path.cubicTo(rightContOne.dx, rightContOne.dy, rightContTwo.dx, rightContTwo.dy,size.width/2+90, size.height-50);



    _path.lineTo(size.width-radius, size.height-50);
    _path.arcToPoint(Offset(size.width, size.height-50-radius), radius: Radius.circular(radius), clockwise: false);

    _path.lineTo(size.width, 50+radius);
    _path.arcToPoint(Offset(size.width-radius, 50), radius: Radius.circular(radius), clockwise: false);

    _path.close();


    return _path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldPath){
    return true;
  }
}