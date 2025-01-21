import 'package:flutter/material.dart';

class MoreClipperOne extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double radius = 40;

    Path _path = Path();

    _path.moveTo(radius,0);

    _path.arcToPoint(Offset(0, radius), radius: Radius.circular(radius), clockwise: false);

    _path.lineTo(0,size.height-radius);

    _path.arcToPoint(Offset(radius, size.height), radius: Radius.circular(radius), clockwise: false);
    _path.lineTo(size.width-radius, size.height);

    _path.arcToPoint(Offset(size.width, size.height-radius), radius: Radius.circular(radius), clockwise: false);
    _path.lineTo(size.width, 40+radius);
    _path.arcToPoint(Offset(size.width-radius, 40), radius: Radius.circular(radius), clockwise: false);
    _path.close();

    return _path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldPath){
    return true;
  }
}