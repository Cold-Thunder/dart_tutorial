import 'package:flutter/cupertino.dart';

class ArcToPointMoreUse extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double radius = 35;
    Path path = Path();

    path.moveTo(radius,0);
    path.arcToPoint(Offset(0, radius), radius:Radius.circular(radius), clockwise: false);
    path.lineTo(0, size.height-radius);
    path.arcToPoint(Offset(radius, size.height), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(size.width-radius, size.height);
    path.arcToPoint(Offset(size.width, size.height-radius), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(size.width, 30+radius);
    path.arcToPoint(Offset(size.width-radius, radius), radius: Radius.circular(radius), clockwise: false);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return true;
  }
}