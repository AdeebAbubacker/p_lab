import 'package:flutter/material.dart';
import 'package:panakj_app/core/constant/constants.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  MyDropdownState createState() => MyDropdownState();
}

class MyDropdownState extends State<MyDropdown> {
  String? _validateDropdown(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select a query type';
    }
    return null;
  }

  String? selectedOption1;
  String? selectedOption2;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 58,
          width: deviceWidth * 0.80,
          child: DropdownButtonFormField<String>(
            itemHeight: 58,
            onChanged: (val) {
              setState(() {
                selectedOption2 = val;
              });
            },
            validator: _validateDropdown,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                left: 10,
                right: 5,
                bottom: 0,
                top: 0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            focusColor: Colors.white,
            value: selectedOption1,
            style: const TextStyle(color: Colors.white, fontSize: 14),
            iconEnabledColor: Colors.black,
            items: <String>['Sports', 'Medals', 'Awards', 'Others']
                .map<DropdownMenuItem<String>>(
              (String val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(
                    val,
                    style: kCardContentStyle,
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
