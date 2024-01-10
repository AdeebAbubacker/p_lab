import 'package:flutter/material.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';

class LabelName extends StatefulWidget {
  final int maxlines;
  final double padding;
  final String labelText;
  FocusNode namefocusnode;
  TextEditingController namecontroller;
  final Function(String)? onChanged;

   LabelName({
    this.maxlines = 1,
    Key? key,
    required this.labelText,
    this.padding = 5,
    this.onChanged,
    required this.namefocusnode,
    required this.namecontroller,
  }) : super(key: key);

  @override
  _LabelNameState createState() => _LabelNameState();
}

class _LabelNameState extends State<LabelName> {

  bool _isValid = true;

  @override
  void initState() {
    super.initState();
   widget. namecontroller.addListener(() {
      if (widget.onChanged != null) {
        widget.onChanged!(widget.namecontroller .text);
      }
      setState(() {
        _isValid = isFieldEmpty(widget.namecontroller .text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        InputLabel(mytext: widget.labelText),
        Container(
          width: deviceWidth * 0.95,
          height: 50, // Set a fixed height here
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: labelnumericalContainerbordercolor,
              width: 1.0,
            ),
            color: labelnumericalContainercolor,
          ),
          child: TextFormField(
            focusNode: widget.namefocusnode,
            style: kCardContentStyle,
            controller: widget.namecontroller,
            maxLines: widget.maxlines,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 6, left: 14),
              errorText: _isValid ? null : 'name is mandatory',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  // bool isEmailValid(String email) {
  //   final emailRegExp =
  //       RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-z]{2,4})$');
  //   return emailRegExp.hasMatch(email);
  // }
  bool isFieldEmpty(String field) {
    if (field.isEmpty) {
      return false;
    }
    return field.isNotEmpty;
  }
}
