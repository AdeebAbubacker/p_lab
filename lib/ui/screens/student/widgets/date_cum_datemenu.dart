import 'package:flutter/material.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';

class DatecumDateMenu extends StatelessWidget {
  final String date;
  const DatecumDateMenu({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        InputLabel(mytext: date),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 207, 203, 203),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.calendar_month),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Text(
                      'Start Date',
                      style: kCarddateTextStyle,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 227, 224, 224),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.calendar_month),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Text(
                      'End Date',
                      style: kCarddateTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
