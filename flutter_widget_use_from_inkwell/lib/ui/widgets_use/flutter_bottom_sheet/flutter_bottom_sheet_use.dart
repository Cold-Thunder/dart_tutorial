import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/text_styles.dart';

class FlutterBottomSheetUse extends StatefulWidget {
  const FlutterBottomSheetUse({super.key});

  @override
  State<FlutterBottomSheetUse> createState() => _FlutterBottomSheetUseState();
}

class _FlutterBottomSheetUseState extends State<FlutterBottomSheetUse> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Bottom Sheet')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          spacing: 20,
          children: [
            Text('Flutter Bottom Sheet use', style: TextStyles.flagHeading),
            ElevatedButton(
              child: Text('Show Bottom Sheet'),
              onPressed: () {
                bottomSheet(context, width);
              },
            )
          ],
        ),
      ),
    );
  }
}

bottomSheet(BuildContext context, double width) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ),
    builder: (context) {
      return Container(
        width: width,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        ),
      );
    },
  );
}
