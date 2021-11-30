import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final height = size.height;
    final width = size.width;
    debugPrint('CustomClipPath.getClip size= $size');
    path.lineTo(0, height);
    path.quadraticBezierTo(width / 4, height - 90, width / 2, height - 90);
    path.quadraticBezierTo(3 / 4 * width, height - 90, width, height - 50);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
