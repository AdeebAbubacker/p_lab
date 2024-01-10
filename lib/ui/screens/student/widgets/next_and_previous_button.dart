import 'package:flutter/material.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/package/core/constants.dart';

class StepperBtn extends StatelessWidget {
  final String nextorprev;
  const StepperBtn({super.key, this.nextorprev = 'Next'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: const BoxDecoration(
          color: kvioletColor3,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Center(
        child: Text(
          nextorprev,
          style: myButtontxtColor,
        ),
      ),
    );
  }
}
