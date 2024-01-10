import 'package:flutter/material.dart';
import 'package:panakj_app/core/constant/constants.dart';

class InpuText extends StatefulWidget {
  final int maxlines;
   FocusNode focusNode = FocusNode();
  TextEditingController StringInput = TextEditingController();
  InpuText({
    this.maxlines = 1,
    required this.StringInput,
    required this.focusNode,
    Key? key,
  }) : super(key: key);

  @override
  State<InpuText> createState() => _InpuTextState();
}

class _InpuTextState extends State<InpuText> {
  int? selectedId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: kpadding14(
            child: TextField(
              focusNode:widget.focusNode ,
                controller: widget.StringInput,
                maxLines: widget.maxlines,
                decoration: const InputDecoration(border: InputBorder.none),
                style: kFormContentStyle),
          ),
        ),
      ],
    );
  }
}
