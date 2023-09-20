import 'package:flutter/material.dart';

final kTitleStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'CM Sans Serif',
  fontSize: 26.0,
  height: 1.5,
);

final kSubtitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  height: 1.2,
);

Gradient gradient1 = LinearGradient(
  colors: [Color(0xFF77CDE1), Color(0xFF03978D)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Gradient gradient1withopacity = LinearGradient(
  colors: [
    Color(0xFF77CDE1).withOpacity(0.5),
    Color(0xFF03978D).withOpacity(0.5)
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Gradient gradient2 = LinearGradient(
  colors: [Colors.transparent, Colors.transparent],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Gradient gradient3 = LinearGradient(
  colors: [Color(0xFF1FA0FF), Color(0xFFB2F4FF)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
