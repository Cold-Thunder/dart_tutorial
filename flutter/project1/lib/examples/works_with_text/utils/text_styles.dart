import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle appBarTitleStyle =const TextStyle(
  fontSize: 24,
  color: Colors.white,
    shadows: [
      Shadow(
        offset: Offset(1,1),
        color: Colors.red,
        blurRadius: 3,
      )
    ]
);

TextStyle textPageHeading = const TextStyle(
  fontSize: 35,
  color: Colors.blue,
  fontWeight: FontWeight.bold
);

TextStyle textUseNormal = const TextStyle(
  fontSize: 22,
  color: Colors.purple,
);

TextStyle textTopicHeading = const TextStyle(
  fontSize: 28,
  color: Colors.blue
);

TextStyle textTopicPreview = const TextStyle(
  fontSize: 32,
  color: Colors.red,
  fontStyle: FontStyle.italic
);