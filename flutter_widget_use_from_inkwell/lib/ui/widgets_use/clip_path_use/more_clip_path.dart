import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_clip_paths/appbar_design_clippath.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_clip_paths/more_clip_path_two.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_clip_paths/more_cliper_one.dart';

class MoreClipPath extends StatefulWidget {
  const MoreClipPath({super.key});

  @override
  State<MoreClipPath> createState() => _MoreClipPathState();
}

class _MoreClipPathState extends State<MoreClipPath> {
  Offset tapDownLocation = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('More clip path uses')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(spacing: 10, children: [
            ClipPath(
              clipper: MoreClipperOne(),
              child:
                  Container(height: 200, width: width, color: AllColors.orange),
            ),
            ClipPath(
              clipper: MoreClipPathTwo(),
              child:
                  Container(height: 250, width: width, color: AllColors.purple),
            ),
            // custom appbar design
            GestureDetector(
              onTapDown: (TapDownDetails details) {
                setState(() {
                  tapDownLocation = details.globalPosition;
                });
                debugPrint(details.globalPosition.toString());
              },
              onLongPressMoveUpdate: (LongPressMoveUpdateDetails details) {
                setState(() {
                  tapDownLocation = details.globalPosition;
                });
                debugPrint(details.globalPosition.toString());
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipPath(
                    clipper: AppBarDesignClippath(tapLocation: tapDownLocation),
                    child: Container(
                      width: width,
                      height: 60,
                      color: AllColors.purple,
                    ),
                  ),
                  Positioned(
                    top: -7,
                    left: tapDownLocation.dx - 22,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: AllColors.swedenBlue, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
