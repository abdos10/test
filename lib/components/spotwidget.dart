import 'dart:ui';

import 'package:flutter/material.dart';

class SpotWidget extends StatelessWidget {
   double? left;
  double? top;
  double? right;
  final Color color;

  SpotWidget({super.key, this.left, this.top, this.right, required this.color});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    return  Positioned(
      top: top,
      left: left,
      right: right,
      child: Container(
        width: screenwidth * 0.5,
        height: screenheight * 0.4,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
          child: SizedBox(
            width: screenwidth * 0.3,
            height: screenheight * 0.2,
          ),
        ),
      ),
    );;
  }
}