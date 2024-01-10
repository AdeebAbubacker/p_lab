import 'dart:async';
import 'package:flutter/material.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/local_widgets/occupation_bottomsheet.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_bottomSheet.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/local_widgets/checkbox_data.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_inputText.dart';
import 'package:panakj_app/ui/screens/student/widgets/labul_NumericalText.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/local_widgets/lineDivider.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_name.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';

class FamilyCard extends StatefulWidget {
  TextEditingController fathernameController = TextEditingController();
  TextEditingController fatherincomeController = TextEditingController();
  TextEditingController mothernameController = TextEditingController();
  TextEditingController motherincomeController = TextEditingController();
  TextEditingController guardianameController = TextEditingController();
  TextEditingController guardiaincomeController = TextEditingController();
  FocusNode realtionfocusNode;
  FocusNode fatherfocusNode;
  FocusNode motherfocusNode;
  FocusNode fathericomefocusnode;
  FocusNode mothericomefocusnode;
  FocusNode guardianicomefocusnode;
  FocusNode guardianfocusNode;
  final Widget siblings;
  bool mybool;
  TextEditingController relationController = TextEditingController();

  final width;
  FamilyCard({
    super.key,
    this.width,
    required this.mybool,
    required this.realtionfocusNode,
    required this.fathernameController,
    required this.fathericomefocusnode,
    required this.mothernameController,
    required this.mothericomefocusnode,
    required this.guardianameController,
    required this.guardianicomefocusnode,
    required this.fatherfocusNode,
    required this.motherfocusNode,
    required this.guardianfocusNode,
    required this.fatherincomeController,
    required this.motherincomeController,
    required this.guardiaincomeController,
    this.siblings = const Text(''),
  });

  @override
  State<FamilyCard> createState() => _FamilyCardState();
}

class _FamilyCardState extends State<FamilyCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 12),
            child: Text('Father', style: kfamiltTitleTextColor),
          ),
          LabelName(
            labelText: 'Name',
            namefocusnode: widget.fatherfocusNode,
            namecontroller: widget.fathernameController,
          ),
          const HeightSpacer(height: 14),
          const CheckBoxData1(),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Occupation / Job'),
       OccupationBottomSheet(title: 'Occupation Details'),
          // labelBottomSheet(
          //     title: 'Occupation Details',
          //     hintText: 'Search For Occupation / Job'),
          const HeightSpacer(height: 14),
          LabelNumericalText(
              numericalfocusnode: widget.fathericomefocusnode,
              mytext: 'Monthly Income',
              numController: widget.fatherincomeController),
          const LineDivider(),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 12),
            child: Text('Mother', style: kfamiltTitleTextColor),
          ),
          LabelName(
            labelText: 'Name',
            namefocusnode: widget.motherfocusNode,
            namecontroller: widget.mothernameController,
          ),
          const HeightSpacer(height: 14),
          const CheckBoxData2(),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Occupation / Job'),
          labelBottomSheet(
              title: 'Occupation Details',
              hintText: 'Search For Occupation / Job'),
          const HeightSpacer(height: 14),
          LabelNumericalText(
              numericalfocusnode: widget.mothericomefocusnode,
              mytext: 'Monthly Income',
              numController: widget.motherincomeController),
          const LineDivider(),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 12),
            child: Text('Guardian', style: kfamiltTitleTextColor),
          ),
          LabelName(
            namecontroller: widget.guardianameController,
            labelText: 'Name',
            namefocusnode: widget.guardianfocusNode,
          ),
          const HeightSpacer(height: 14),
          const CheckBoxData3(),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Occupation / Job'),
          labelBottomSheet(
              title: 'Occupation Details',
              hintText: 'Search For Occupation / Job'),
          const HeightSpacer(height: 14),
          LabelNumericalText(
              numericalfocusnode: widget.guardianicomefocusnode,
              mytext: 'Monthly Income',
              numController: widget.guardiaincomeController),
          const LineDivider(),
          widget.siblings
        ],
      ),
    );
  }
}
