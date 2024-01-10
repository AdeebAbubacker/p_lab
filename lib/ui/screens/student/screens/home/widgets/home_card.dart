import 'package:flutter/material.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/screens/student/screens/home/widgets/question_one.dart';
import 'package:panakj_app/ui/screens/student/screens/home/widgets/question_three.dart';
import 'package:panakj_app/ui/screens/student/screens/home/widgets/question_two.dart';
import 'package:panakj_app/ui/screens/student/screens/home/widgets/land_answer_text.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';

class HomeCard extends StatefulWidget {
  TextEditingController landcontroller;
  final Widget siblings;
  bool mybool;
  FocusNode landfocusNode = FocusNode();

  final width;
  HomeCard({
    super.key,
    this.width,
    required this.mybool,
    required this.landfocusNode,
    required this.landcontroller,
    this.siblings = const Text(''),
  });

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '* nb: Please provide your residential details genuinely',
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              fontSize: 12.0,
            ),
          ),
          const HeightSpacer(),
          const HeightSpacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. ',
                style: homeContentStyle,
              ),
              SizedBox(
                width: 300,
                child: Text(
                    textAlign: TextAlign.justify,
                    'Which category best describes your current residence ?',
                    style: homeContentStyle),
              ),
            ],
          ),
          const Question1CheckBox(),
          const HeightSpacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '2. ',
                style: homeContentStyle,
              ),
              SizedBox(
                width: 300,
                child: Text(
                    textAlign: TextAlign.justify,
                    'What type of roofing material does your residence have ?',
                    style: homeContentStyle),
              ),
            ],
          ),
          const Question2CheckBox(
            option1: 'sheet',
            option2: 'concrete',
            option3: 'Tilled',
          ),
          const HeightSpacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '3. ',
                style: homeContentStyle,
              ),
              SizedBox(
                width: 300,
                child: Text(
                    textAlign: TextAlign.justify,
                    'What is the source of drinking water at your residence ?',
                    style: homeContentStyle),
              ),
            ],
          ),
          const Question3CheckBox(
              option1: 'Pipe water',
              option2: 'Well Water',
              option3: 'Other Source'),
          const HeightSpacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '4. ',
                style: homeContentStyle,
              ),
              SizedBox(
                width: 300,
                child: Text(
                    textAlign: TextAlign.justify,
                    'How many extend of land do you own ?',
                    style: homeContentStyle),
              ),
            ],
          ),
          LandAnswerTextField(
            landfocusNode: widget.landfocusNode,
            landcontroller: widget.landcontroller,
          )
        ],
      ),
    );
  }
}
