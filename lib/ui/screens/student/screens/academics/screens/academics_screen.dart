import 'package:flutter/material.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/screens/academics_layout.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/widgets/academics_card.dart';

class AcademicsScreen extends StatelessWidget {
final  FocusNode examRegfocusnode;
final  FocusNode sslcfocusnode;
 final FocusNode plusonefocusnode;
final  FocusNode plustwofocusnode;
TextEditingController examregcontroller;
TextEditingController sslcmarks;
  TextEditingController plusone_marks;
  TextEditingController plustwo_marks;
   AcademicsScreen({
    super.key,
    required this.examRegfocusnode,
    required this.sslcfocusnode,
    required this.plusonefocusnode,
    required this.plustwofocusnode,
    required this.examregcontroller,
      required this.sslcmarks,
    required this.plusone_marks,
    required this.plustwo_marks,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AcademicsLayout(
          academicsLayoutheight: 470,
          title: 'Academic Details',
          academicsDetailsCard: AcademicsCard(
            mybool: false,
            examRegfocusnode: examRegfocusnode,
            sslcfocusnode: sslcfocusnode,
            plusonefocusnode: plusonefocusnode,
            plustwofocusnode: plustwofocusnode,
            examregcontroller: examregcontroller,
            sslcmarks: sslcmarks,
            plusone_marks: plusone_marks,
            plustwo_marks: plustwo_marks,
          ),
        ),
      ],
    );
  }
}
