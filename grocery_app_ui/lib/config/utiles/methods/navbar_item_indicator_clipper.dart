import 'package:flutter/cupertino.dart';

class NavbarItemIndicatorClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double radius = 5;
    Path path =Path();
     path.moveTo(5, 0);
     path.arcToPoint(Offset(0, 5), radius: Radius.circular(radius), clockwise: false);
     path.lineTo(size.width/2-5, size.height);
     path.lineTo(size.width/2+5, size.height);
     path.lineTo(size.width, 5);
     path.arcToPoint(Offset(size.width-5, 0), radius: Radius.circular(radius), clockwise: false);
     path.lineTo(0,0);
     path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return true;
  }

}