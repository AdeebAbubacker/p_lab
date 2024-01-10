import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  final Widget widget;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  const MyPadding(
      {super.key,
      required this.widget,
      this.paddingRight = 20,
      this.paddingLeft = 20,
      this.paddingBottom = 0,
      this.paddingTop = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingLeft,
        right: paddingRight,
        top: paddingTop,
        bottom: paddingTop,
      ),
      child: widget,
    );
  }
}
