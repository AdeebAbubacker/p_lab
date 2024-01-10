import 'package:flutter/material.dart';
import 'package:panakj_app/core/constant/constants.dart';

// ignore: must_be_immutable
class InputLabel extends StatelessWidget {
 
  String mytext;
   final double padding;
   InputLabel({
    super.key, required this.mytext,
    this.padding = 5
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
             padding:  EdgeInsets.only(bottom: padding),
             child: Text(
               mytext,
               style: kCardContentStyle,
             ),
           );
  }
}