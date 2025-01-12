import 'package:flutter/cupertino.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: SizedBox(
        width: width,
        child: Column(
          spacing: 20,
          children: [
            Container(
              alignment: Alignment.center,
              height: 400,
              width: 300,
              color: AllColors.purple,
              child: Text(
                'Ongoing Screen',
                style: TextStyle(fontSize: 30, color: AllColors.white),
              ),
            ),Container(
              alignment: Alignment.center,
              height: 400,
              width: 300,
              color: AllColors.purple,
              child: Text(
                'Ongoing Screen',
                style: TextStyle(fontSize: 30, color: AllColors.white),
              ),
            ),Container(
              alignment: Alignment.center,
              height: 400,
              width: 300,
              color: AllColors.purple,
              child: Text(
                'Ongoing Screen',
                style: TextStyle(fontSize: 30, color: AllColors.white),
              ),
            ),Container(
              alignment: Alignment.center,
              height: 400,
              width: 300,
              color: AllColors.purple,
              child: Text(
                'Ongoing Screen',
                style: TextStyle(fontSize: 30, color: AllColors.white),
              ),
            ),Container(
              alignment: Alignment.center,
              height: 400,
              width: 300,
              color: AllColors.purple,
              child: Text(
                'Ongoing Screen',
                style: TextStyle(fontSize: 30, color: AllColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
