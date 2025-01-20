
import 'package:flutter/cupertino.dart';

class RadiusArcToPoint extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double radius = 20;
    // double pi = 3.1416;
      Path path = Path();

      path.moveTo(0, radius);
      path.arcToPoint(Offset(radius, 0), radius: Radius.circular(radius), clockwise: false);
      path.lineTo(size.width-radius, 0);
      path.arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius), clockwise: true);
      path.lineTo(size.width, size.height-radius);
      path.arcToPoint(Offset(size.width-radius, size.height), radius: Radius.circular(radius), clockwise: false);

      path.lineTo(radius, size.height);
      path.arcToPoint(Offset(0, size.height -radius), radius: Radius.circular(radius), clockwise: true);

      path.close();

      return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return true;
  }
}