import 'package:flutter/material.dart';

class HeightSpacer extends StatelessWidget {
  final double height;
  const HeightSpacer({super.key,this.height = 20});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: height,);
  }
}