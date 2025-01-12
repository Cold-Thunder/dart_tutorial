import 'package:flutter/cupertino.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 400,
      width: 300,
      color: AllColors.orange,
      child: Text(
        'History Screen',
        style: TextStyle(fontSize: 30, color: AllColors.white),
      ),
    );
  }
}
