import 'package:flutter/cupertino.dart';

class CustomClipPathOne extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path _path = Path();

    _path.moveTo(0,30);

    _path.lineTo(0, size.height -200);

    // bottom left corner
    Offset bottomLeftFirst = Offset(0, size.height-130);
    Offset bottomLeftSecond = Offset(70, size.height-130);
    _path.quadraticBezierTo(bottomLeftFirst.dx, bottomLeftFirst.dy, bottomLeftSecond.dx, bottomLeftSecond.dy);

    _path.lineTo(size.width*0.21, size.height-130);

    // middle center left section
    Offset conOne = Offset(size.width*0.21+45, size.height-130);
    Offset conTwo = Offset(size.width*0.21+45, size.height-80);
    Offset endPoint = Offset(size.width/2, size.height-80);

    _path.cubicTo(conOne.dx, conOne.dy, conTwo.dx, conTwo.dy, endPoint.dx, endPoint.dy);

    // middle center right section
    Offset conOneRight = Offset(size.width*0.21+155, size.height-90);
    Offset conTwoRight = Offset(size.width*0.21+125, size.height-130);
    Offset endPointRight = Offset(size.width/2+100, size.height-130);
    _path.cubicTo(conOneRight.dx, conOneRight.dy, conTwoRight.dx, conTwoRight.dy, endPointRight.dx, endPointRight.dy);



    _path.lineTo(size.width-60, size.height-130);
    // bottom right corner
    Offset bottomRightFirst = Offset(size.width, size.height-130);
    Offset bottomRightSecond = Offset(size.width, size.height - 200);

    _path.quadraticBezierTo(bottomRightFirst.dx, bottomRightFirst.dy, bottomRightSecond.dx, bottomRightSecond.dy);

    _path.lineTo(size.width,100);

    // top right corner
    Offset topRightFirst = Offset(size.width, 40);
    Offset topRightSecond = Offset(size.width - 70, 28);

    _path.quadraticBezierTo(topRightFirst.dx, topRightFirst.dy, topRightSecond.dx, topRightSecond.dy);

    _path.lineTo(70, 5);

    // top left corner
    Offset topLeftFirst = Offset(0,0);
    Offset topLeftSecond = Offset(0, 70);
    _path.quadraticBezierTo(topLeftFirst.dx, topLeftFirst.dy, topLeftSecond.dx, topLeftSecond.dy);




    return _path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}