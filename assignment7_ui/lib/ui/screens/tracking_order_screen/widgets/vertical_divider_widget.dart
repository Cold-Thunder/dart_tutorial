import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  final Color color;
  const VerticalDividerWidget({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
          height: 30,
          child: VerticalDivider(
              width: 1,
              color: color
          )
      ),
    );
  }
}
