import 'package:flutter/material.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/screens/student/widgets/myPadding.dart';

class Achievmentslayout extends StatefulWidget {
  final Widget achievmentDetailsCard;
  final double achievmentslayoutheight;
  final String title;

  Achievmentslayout({
    super.key,
    required this.title,
    required this.achievmentslayoutheight,
    required this.achievmentDetailsCard,
  });
  // ignore: prefer_typing_uninitialized_variables

  @override
  State<Achievmentslayout> createState() => _AchievmentslayoutState();
}

class _AchievmentslayoutState extends State<Achievmentslayout> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.16), 
                      offset: Offset(5, 8), 
                      blurRadius: 15, 
                      spreadRadius: 0, 
                    ),
                  ]),
              width: deviceWidth * 0.95,
              height: widget.achievmentslayoutheight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      widget.title,
                      style: kCardFilterTextStyle,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: deviceWidth * 0.95,
                    color: khorizontlinecolor,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  MyPadding(widget: widget.achievmentDetailsCard),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
