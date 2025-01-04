import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthsBackground extends StatelessWidget {
  const AuthsBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 30,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(AllImages.splashTopFlow),
          ),
          Positioned(
            top: 0,
            left: width * 0.75,
            child: SvgPicture.asset(AllImages.authTopBackShape),
          ),
        ],
      ),
    );
  }
}
