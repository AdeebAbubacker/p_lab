import 'package:flutter/material.dart';

class Connector extends StatelessWidget {
  final Color? myColor;
 final double width;
  const Connector({super.key, this.width = 20, this.myColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 1,
      decoration: BoxDecoration(
          color: myColor,
          borderRadius: const BorderRadius.all(Radius.circular(3))),
    );
  }
}

