import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:panakj_app/core/constant/constants.dart';

class Marksdetails extends StatelessWidget {
  final String title;
 final FocusNode marksfocusnode;
   TextEditingController marks;

  Marksdetails({
    Key? key,
    this.title = 'SSLC Marks',
    required this.marksfocusnode,
    required this.marks,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: kCardContentStyle),
        SizedBox(
          width: 90,
          height: 30,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  focusNode: marksfocusnode,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  controller:  marks,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(7),
                    TextInputFormater(decimalDigits: 2, integerDigits: 2),
                  ],
                  style: kCardContentStyle, 
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TextInputFormater extends TextInputFormatter {
  final int integerDigits;
  final int decimalDigits;

  TextInputFormater({required this.integerDigits, required this.decimalDigits});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

 
    if (newText.isEmpty) {
      return newValue.copyWith(text: '');
    }

  
    newText = newText.replaceAll(RegExp(r'[^0-9.]'), '');

    if (newText.contains('.')) {
      List<String> parts = newText.split('.');

      if (parts[0].length > integerDigits) {
        newText = oldValue.text;
      }


      if (parts.length == 2 && parts[1].length > decimalDigits) {
        newText = '${parts[0]}.${parts[1].substring(0, decimalDigits)}';
      }
    } else {

      if (newText.length > integerDigits) {
        newText = oldValue.text;
      }
    }

    if (!newText.endsWith('%')) {
      newText += ' %';
    }

    return newValue.copyWith(text: newText);
  }
}
