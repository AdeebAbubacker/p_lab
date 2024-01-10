// when i put choice value 1, 2, 3 in list then automatically
// it should generate radio buttons

import 'package:flutter/material.dart';
import 'package:panakj_app/core/constant/constants.dart';

class VerticalRadioBtn extends StatefulWidget {
  final String? title;
  int groupValue;
  final List<MyData> steps;

  VerticalRadioBtn(
      {super.key,
      required this.title,
      this.groupValue = 0,
      required this.steps});

  @override
  VerticalRadioBtnState createState() => VerticalRadioBtnState();
}

class VerticalRadioBtnState extends State<VerticalRadioBtn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            widget.title.toString(),
            style: kCardContentStyle,
          ),
        ),
        // const SizedBox(
        //   width: 40,
        // ),
        Column(
          children: widget.steps.asMap().entries.map((entry) {
            final index = entry.key + 1;
            final content = entry.value;
            return Row(
              children: [
                Radio(
                  value: index,
                  groupValue: widget.groupValue,
                  onChanged: (value) {
                    setState(() {
                      widget.groupValue = value as int;
                    });
                  },
                ),
                Text(
                  content.choiceLabel,
                  style: kCardContentStyle,
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}

class MyData {
  final String choiceLabel;

  MyData({
    required this.choiceLabel,
  });
}
