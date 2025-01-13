import 'package:assignment8_ui/config/all_colors.dart';
import 'package:flutter/material.dart';

class PrefixIconWidget extends StatelessWidget {
  const PrefixIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      radius: 15,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
                height: 48,
                width: 48,
                // color: Colors.red,
                child: Icon(Icons.flip_camera_ios, size: 24, color: AllColors.mainGreen)
            ),
            SizedBox(
                height: 35,
                width: 1,
                child: VerticalDivider(
                    width: 1,
                    color: AllColors.borderOutlineGrey
                )
            )
          ],
        ),
      ),
    );
  }
}
