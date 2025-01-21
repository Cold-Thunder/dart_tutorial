import 'package:flutter/cupertino.dart';

class AppBarDesignClipPath extends CustomClipper<Path>{
  final Offset tapLocation;

  AppBarDesignClipPath({required this.tapLocation});

  @override
  Path getClip(Size size){
    double radius = 28;
    Path path = Path();

    path.moveTo(0,0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    path.lineTo(tapLocation.dx+radius+20, 0);

    // right braze
    path.arcToPoint(Offset(tapLocation.dx+radius, 15), radius: Radius.circular(18), clockwise: false);
    path.lineTo(tapLocation.dx+radius, 15);

    path.arcToPoint(Offset(tapLocation.dx-radius, 15), radius: Radius.circular(radius), clockwise: true);

    // left braze
    path.arcToPoint(Offset(tapLocation.dx-radius-15, 0), radius: Radius.circular(18), clockwise: false);



    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper){
    return true;
  }
}