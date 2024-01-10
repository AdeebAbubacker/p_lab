import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/db/adapters/school_adapter/school_adapter.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/widgets/exam_reg.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/widgets/marks_details.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/widgets/school_bottomsheet.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/local_widgets/course_bottomsheet.dart';

class AcademicsCard extends StatefulWidget {
  final Widget siblings;
  final FocusNode examRegfocusnode;
  final FocusNode sslcfocusnode;
  final FocusNode plusonefocusnode;
  final FocusNode plustwofocusnode;
  final bool mybool;
  TextEditingController examregcontroller;
  TextEditingController sslcmarks;
  TextEditingController plusone_marks;
  TextEditingController plustwo_marks;

  final double? width;
  AcademicsCard({
    super.key,
    this.width,
    required this.examRegfocusnode,
    required this.mybool,
    required this.sslcfocusnode,
    required this.plusonefocusnode,
    required this.plustwofocusnode,
    required this.examregcontroller,
    required this.sslcmarks,
    required this.plusone_marks,
    required this.plustwo_marks,
    this.siblings = const Text(''),
  });

  @override
  State<AcademicsCard> createState() => _AcademicsCardState();
}

class _AcademicsCardState extends State<AcademicsCard> {
  late Box<SchoolDB> schoolBox;
  List<String> schoolNames = [];
  @override
  void initState() {
    super.initState();
    setupSchoolBox();
  }

  Future<void> setupSchoolBox() async {
    schoolBox = await Hive.openBox<SchoolDB>('schoolBox');

    if (!schoolBox.isOpen) {
      return;
    }

    List<int> keys = schoolBox.keys.cast<int>().toList();

    if (keys.isEmpty) {
      return;
    }

    schoolNames = keys.map((key) {
      SchoolDB school = schoolBox.get(key)!;
      return school.name;
    }).toList();

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputLabel(mytext: 'School Name'),
          schoolBottomSheet(title: 'School Name'),
          const HeightSpacer(),
          ExamReg(
              examRegfocusnode: widget.examRegfocusnode,
              examregcontroller: widget.examregcontroller),
          const HeightSpacer(),
          Marksdetails(
            title: 'SSLC Marks',
            marksfocusnode: widget.sslcfocusnode,
            marks: widget.sslcmarks,
          ),
          const HeightSpacer(),
          Marksdetails(
            title: 'Plus One Marks',
            marksfocusnode: widget.plusonefocusnode,
            marks: widget.plusone_marks,
          ),
          const HeightSpacer(),
          Marksdetails(
            title: 'Plus Two Marks',
            marksfocusnode: widget.plustwofocusnode,
            marks: widget.plustwo_marks,
          ),
          const HeightSpacer(height: 14),
          InputLabel(mytext: 'Preference for Higher Studies'),
          CoursebottomSheet(
            title: 'Course of Study',
          ),
        ],
      ),
    );
  }
}
