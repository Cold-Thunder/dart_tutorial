import 'package:flutter/cupertino.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        width: width,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: AllColors.orange,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text(
                'Menu Screen',
                style: TextStyle(fontSize: 30, color: AllColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
