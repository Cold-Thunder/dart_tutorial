import 'package:flutter/material.dart';
import 'package:widgets_use/ui/widgets_use/elevated_button_use.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_animateto_use.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_controller_use.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/scroll_practice_two.dart';
import 'package:widgets_use/ui/widgets_use/scroll_controller_use/use_scrollable_positioned_list.dart';

class PracticingScrollCotroller extends StatelessWidget {
  const PracticingScrollCotroller({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Controller')
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              ElevatedButtonUse(title: 'First Use of scroll controller', screen: ScrollControllerUse()),
              ElevatedButtonUse(title: 'Second Use of scroll controller', screen: ScrollPracticeTwo()),
              ElevatedButtonUse(title: 'Scroll AnimateTo use', screen: ScrollAnimatetoUse()),
              ElevatedButtonUse(title: 'Scrollable Positioned List use', screen: UseScrollablePositionedList()),
            ],
          )
        ),
      )
    );
  }
}
