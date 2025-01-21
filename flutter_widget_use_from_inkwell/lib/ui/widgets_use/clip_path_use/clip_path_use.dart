import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_bottom_navbar_clippath.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_clip_paths/arc_to_point_more_use.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_clip_paths/clip_cubicTo.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_clip_paths/custom_clip_path_one.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_clip_paths/radius_arc_to.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/more_clip_path.dart';
import 'package:widgets_use/ui/widgets_use/elevated_button_use.dart';

class ClipPathUse extends StatelessWidget {
  const ClipPathUse({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Clip Path')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            spacing: 20,
            children: [
              ClipPath(
                clipper: CustomClipPathOne(),
                child: Container(
                    height: 350, width: width, color: AllColors.swedenBlue),
              ),
              ClipPath(
                clipper: CubicTo(),
                child: Container(
                  height: 200,
                  width: width,
                  color: AllColors.gerRed
                )
              ),
              ElevatedButtonUse(title: 'Show more Clip Path', screen: MoreClipPath()),
              ElevatedButtonUse(title: 'Custom Bottom Navbar', screen: CustomBottomNavbarClippath()),

              // clip path with arcToPoint
              ClipPath(
                clipper: RadiusArcToPoint(),
                child: Container(
                  height: 150,
                  width: width,
                  color: AllColors.purple
                )
              ),
              ClipPath(
                clipper:ArcToPointMoreUse(),
              child: Container(
                height: 200,
                width: width,
                color: AllColors.orange
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
