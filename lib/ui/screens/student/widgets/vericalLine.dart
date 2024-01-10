import 'package:flutter/material.dart';
import 'package:panakj_app/core/colors/colors.dart';

class VerticalLine extends StatelessWidget {
  const VerticalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        width: 1,
        height: 25,
        color:  kVerticalLineColor,
      ),
    );
  }
}
