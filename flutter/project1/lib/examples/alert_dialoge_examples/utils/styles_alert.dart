import 'package:flutter/material.dart';

TextStyle appBarTextStyleAlt =
    const TextStyle(fontSize: 24, color: Colors.white);

TextStyle headingTextStyleAlt = const TextStyle(
    fontSize: 24, color: Colors.purple, fontWeight: FontWeight.bold);

TextStyle elevatedButtonTextStyle = const TextStyle(
  fontSize: 18,
  color: Colors.white,
);

TextStyle alertDialogTitleStyle = const TextStyle(
  fontSize: 18,
  color: Colors.black,
);

TextStyle alertDialogActionStyleOk =
    const TextStyle(fontSize: 18, color: Colors.blue);

TextStyle alertDialogActionStyleCancel =
    const TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold);

ButtonStyle elevatedButtonStyleAlt = ElevatedButton.styleFrom(
    backgroundColor: Colors.purple,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)));

ButtonStyle alertOutlinedButtonStyle = OutlinedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: Colors.red,
    side: const BorderSide(color: Colors.red, width: 3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ));
