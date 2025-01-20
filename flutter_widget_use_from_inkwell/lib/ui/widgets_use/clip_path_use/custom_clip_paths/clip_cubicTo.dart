import 'package:flutter/cupertino.dart';

class CubicTo extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
        final double radius = 20;
        final double pi = 3.1416;
        Path _path =Path();

        _path.moveTo(0,0);
        _path.lineTo(0, 120);

        // bottom left
        Offset contOne = Offset(15, size.height);
        Offset contTwo = Offset(130, size.height-80);
        _path.cubicTo(contOne.dx, contOne.dy, contTwo.dx, contTwo.dy, 150, size.height);

        // bottom right
        _path.lineTo(size.width, size.height);



        // top right
        _path.lineTo(size.width, 100);

        Offset topContOne = Offset(size.width-15, 0);
        Offset topContTwo = Offset(size.width*0.4, 100);
        _path.cubicTo(topContOne.dx, topContOne.dy, topContTwo.dx, topContTwo.dy, size.width*0.4, 0);

        // top left
        _path.lineTo(0,0);

        return _path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}