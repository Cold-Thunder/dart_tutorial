import 'package:flutter/material.dart';
import 'package:widgets_use/config/models/custom_bottom_nev_model.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/custom_clip_paths/appbar_design_clippath.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/widgets/bottom_nav_icon.dart';
import 'package:widgets_use/ui/widgets_use/clip_path_use/widgets/positioned_icon_box.dart';

class CustomBottomNavbarClippath extends StatefulWidget {
  const CustomBottomNavbarClippath({super.key});

  @override
  State<CustomBottomNavbarClippath> createState() =>
      _CustomBottomNavbarClippathState();
}

class _CustomBottomNavbarClippathState
    extends State<CustomBottomNavbarClippath> {
  late Offset tapDownLocation = Offset(50, 0);

  int index = 0;
  int clickedInd = 0;

  List<CustomBottomNevModel> bottomNavItems = [
    CustomBottomNevModel(iconData: Icons.home, index: 0),
    CustomBottomNevModel(iconData: Icons.message, index: 1),
    CustomBottomNevModel(iconData: Icons.add, index: 2),
    CustomBottomNevModel(iconData: Icons.call, index: 3),
    CustomBottomNevModel(iconData: Icons.chat, index: 4),
  ];

  iconIdentifier(TapDownDetails details, int ind) {
    setState(() {
      tapDownLocation = details.globalPosition;
      clickedInd = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.orange,
      appBar: AppBar(title: Text('Custom Bottom NavBar')),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: AppBarDesignClipPath(tapLocation: tapDownLocation),
            child: Container(
              width: width,
              height: 60,
              decoration: BoxDecoration(
                color: AllColors.purple,

              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: bottomNavItems.map((item){
                    return BottomNavIcon(
                        bottomNevModel: item,
                        func: iconIdentifier,
                        clickInd: clickedInd);
                  }).toList(),

            ),),
          ),
          Positioned(
              top: -7,
              left: tapDownLocation.dx - 22,
              child: PositionedIconBox(
                  iconData: bottomNavItems[clickedInd].iconData)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: width,
            child: Column(children: []),
          ),
        ),
      ),
    );
  }
}
