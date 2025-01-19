import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/all_images.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';
import 'package:widgets_use/config/utiles/styles/all_texts.dart';
import 'package:widgets_use/config/utiles/styles/text_styles.dart';
import 'package:widgets_use/ui/widgets_use/animation/tween_animation_use.dart';
import 'package:widgets_use/ui/widgets_use/animation/widgets/hero_screen.dart';
import 'package:widgets_use/ui/widgets_use/elevated_button_use.dart';

class AnimationUses extends StatefulWidget {
  const AnimationUses({super.key});

  @override
  State<AnimationUses> createState() => _AnimationUsesState();
}

class _AnimationUsesState extends State<AnimationUses> {

  bool circle = false;
  double borderRadius = 100;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Animation use')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 20,
              children: [
                // flutter hero widget
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HeroScreen(
                                heroTag: AllTexts.mountain,
                                image: AllImages.mountain)));
                  },
                  child: Hero(
                    tag: AllTexts.mountain,
                    child: Container(
                      height: 100,
                      width: 250,
                      decoration: BoxDecoration(
                        color: AllColors.gerRed,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(AllImages.mountain),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                  ),
                ),
                // flutter animated container
                InkWell(
                  splashColor: AllColors.transparent,
                  highlightColor: AllColors.transparent,
                  onTap: (){
                    setState(() {
                      circle = !circle;
                      borderRadius = circle ? 30 : 100;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(
                      seconds: 3,
                    ),
                    curve: Curves.elasticOut,
                    alignment: Alignment.center,
                    height: circle ? 300 : 150,
                    width: circle ? 300 : 150,
                    decoration: BoxDecoration(
                      color: AllColors.gerRed ,
                      borderRadius: BorderRadius.circular(borderRadius)
                    ),
                    child: Text('Animated', style: TextStyles.headingStyle)
                  ),
                ),
                ElevatedButtonUse(title: 'Tween Animation', screen: TweenAnimationUse())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
