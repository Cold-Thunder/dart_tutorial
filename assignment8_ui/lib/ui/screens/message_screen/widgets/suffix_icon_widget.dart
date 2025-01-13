
import 'package:assignment8_ui/config/all_colors.dart';
import 'package:flutter/material.dart';

class SuffixIconWidget extends StatelessWidget {
  const SuffixIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      radius: 15,
      child: SizedBox(
        width: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
                height: 35,
                width: 1,
                child: VerticalDivider(
                    width: 1,
                    color: AllColors.borderOutlineGrey
                )
            ),
            Transform.rotate(
              angle: -0.785,
              child: SizedBox(
                  height: 48,
                  width: 48,
                  // color: Colors.red,
                  child: Icon(Icons.send, size: 24, color: AllColors.mainGreen)
              ),
            ),

          ],
        ),
      ),
    );
  }
}
