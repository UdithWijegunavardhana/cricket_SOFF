import 'package:flutter/cupertino.dart';

const shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFF0F0F0),
    Color(0xFFF4F4F4),
    Color(0xFFF0F0F0),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);