import 'package:flutter/material.dart';
import 'package:panakj_app/core/constant/constants.dart';

class ExamReg extends StatelessWidget {
  TextEditingController examregcontroller;
 final FocusNode examRegfocusnode;
  final String title;

  ExamReg({
    Key? key,
    this.title = 'Register Number',
    required this.examRegfocusnode,
    required this.examregcontroller,
  }) : super(key: key);

  TextEditingController marks = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: kCardContentStyle),
        SizedBox(
          width: 180,
          height: 20,
          child: TextField(
            controller: examregcontroller,
            focusNode: examRegfocusnode,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelStyle: kCardContentStyle,
              contentPadding:
                  const EdgeInsets.only(right: 0, left: 10, bottom: 15, top: 0),
            ),
            style: kCardContentStyle,
            textAlign: TextAlign.left,
            textInputAction: TextInputAction.done,
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
      ],
    );
  }
}
