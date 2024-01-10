import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';

// ignore: must_be_immutable
class LabelNumericalText extends StatelessWidget {
  FocusNode numericalfocusnode;
  final int maxlines;
  String mytext;
  final double padding;
  TextEditingController numController = TextEditingController();
  LabelNumericalText(
      {this.maxlines = 1,
      super.key,
      required this.numericalfocusnode,
      required this.mytext,
      this.padding = 5,
      required this.numController});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        InputLabel(mytext: mytext),
        Container(
          width: deviceWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: labelnumericalContainerbordercolor,
                width: 1.0,
              ),
              color: labelnumericalContainercolor),
          child: kpadding14(
            child: TextField(
              focusNode: numericalfocusnode,
              style: kCardContentStyle,
              controller: numController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
        ),
      ],
    );
  }
}
