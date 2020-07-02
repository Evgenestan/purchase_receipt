import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var widthRect = size.width / 37;
    var radius = widthRect;
    var offset = widthRect * 3;
    var path = Path();

    for (var i = 0; i < 12; i++) {
      path.moveTo(0 + i * offset, 0);
      path.lineTo(0 + i * offset, size.height);
      path.lineTo(widthRect + i * offset, size.height);
      path.arcTo(
          Rect.fromCircle(
              center: Offset(widthRect + i * offset + radius, size.height),
              radius: widthRect),
          (-1 * pi),
          pi,
          true);

      path.lineTo(widthRect + i * offset + radius * 2, 0);
      path.lineTo(0 + i * offset, 0);
    }
    path.moveTo(0 + 12 * offset, 0);
    path.lineTo(0 + 12 * offset, size.height);
    path.lineTo(0 + 12 * offset + widthRect, size.height);
    path.lineTo(0 + 12 * offset + widthRect, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
