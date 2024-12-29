import 'package:flutter/material.dart';
import 'package:widgets_use/widgets_use/use_snackbar.dart';

class ElevatedButtonUse extends StatelessWidget{
  final String title;
  final Widget screen;
  const ElevatedButtonUse({
    required this.title,
    required this.screen,
    super.key
});

  @override
  Widget build(BuildContext context){
    return  ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
      child: Text(
        title,
      ),
    );
  }
}