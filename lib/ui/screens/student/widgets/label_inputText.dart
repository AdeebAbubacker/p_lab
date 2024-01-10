import 'package:flutter/material.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_text.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';

// ignore: must_be_immutable
class LabelInputText extends StatelessWidget {
  final int maxlines;
  String label;
  final double padding;
  TextEditingController StringInput = TextEditingController();
  FocusNode focusNode = FocusNode();
  LabelInputText({
    this.maxlines = 1,
    super.key,
    required this.StringInput,
    required this.focusNode,
    required this.label,
    this.padding = 5,
  });

  @override
  Widget build(BuildContext context) {
    //  FocusNode _focusNode = FocusNode();
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
// onTap:  if (_focusNode.hasFocus) {
//           _focusNode.unfocus();
//         },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InputLabel(mytext: label),
          Container(
            width: deviceWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: labelnumericalContainerbordercolor,
                width: 1.0,
              ),
              color: labelnumericalContainercolor,
            ),
            child: InpuText(
              StringInput: StringInput,
              focusNode: focusNode,
              maxlines: maxlines,
            ),
          ),
        ],
      ),
    );
  }
}
