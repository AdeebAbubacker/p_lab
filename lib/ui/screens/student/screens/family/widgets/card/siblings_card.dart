import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/core/db/adapters/course_adapter/course_adapter.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/local_widgets/course_bottomsheet.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/local_widgets/qualification_bottomsheet.dart';
import 'package:panakj_app/ui/screens/student/widgets/horizontal_radiobtn.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_bottomSheet.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_inputText.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';
import 'package:panakj_app/ui/view_model/family/family_bloc.dart';

class SiblingsCard extends StatefulWidget {
  final Widget siblings;
  bool mybool;
  TextEditingController siblingnameController1;
  TextEditingController siblingnameController2;
  TextEditingController siblingnameController3;
  TextEditingController siblingnameController4;
  TextEditingController siblingnameController5;
  FocusNode siblingnamefocusNode;

  final width;
  SiblingsCard({
    super.key,
    this.width,
    required this.mybool,
    required this.siblingnamefocusNode,
    required this.siblingnameController1,
    required this.siblingnameController2,
    required this.siblingnameController3,
    required this.siblingnameController4,
    required this.siblingnameController5,
    this.siblings = const Text(''),
  });

  @override
  State<SiblingsCard> createState() => _SiblingsCardState();
}

class _SiblingsCardState extends State<SiblingsCard> {
  List<Widget> siblingCards = [];
  late Box<CourseDB> courseBox;
  List<String> coursename = [];

  Future<void> setupCourseBox() async {
    courseBox = await Hive.openBox<CourseDB>('courseBox');

    if (!courseBox.isOpen) {
      return;
    }

    List<int> keys = courseBox.keys.cast<int>().toList();

    if (keys.isEmpty) {
      return;
    }

    coursename = keys.map((key) {
      CourseDB bank = courseBox.get(key)!;
      return bank.name;
    }).toList();

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    setupCourseBox();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<FamilyBloc, FamilyState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 12),
                child: Text('Brother / Sister', style: kfamiltTitleTextColor),
              ),
              LabelInputText(
                label: 'Name',
                StringInput: TextEditingController(),
                focusNode: widget.siblingnamefocusNode,
              ),
              HorizontalRadioBtn(
                steps: [
                  Content(choiceLabel: 'Male'),
                  Content(choiceLabel: 'Female'),
                ],
                title: 'Gender',
              ),
              InputLabel(mytext: 'Qualification'),
              QualificationbottomSheet(title: 'title'),
              // labelBottomSheet(
              //   bottomSheetheight: 0.74,
              //   title: 'Qualification',
              //   hintText: 'Search For Occupation / Job',
              //   listofData: const [
              //     'No Formal Education',
              //     'Below SSLC',
              //     'SSLC',
              //     'Plus Two',
              //     'Undergraduate',
              //     'Postgraduate',
              //     'M.Phil.',
              //     'Doctorate (Ph.D.)'
              //   ],
              // ),
              const HeightSpacer(),
              InputLabel(mytext: 'Course of Study'),
              CoursebottomSheet(
                title: 'Course of Study',
              ),
              const HeightSpacer(),
              InputLabel(mytext: 'Occupation / Job'),
              labelBottomSheet(
                  title: 'Occupation Details',
                  hintText: 'Search For Occupation / Job'),
              const HeightSpacer(height: 14),
              Column(
                children: state.siblingCards.toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<FamilyBloc>()
                          .add(AddMoreSiblings(siblingNameControllers: [
                            widget.siblingnameController1,
                            widget.siblingnameController2,
                            widget.siblingnameController3,
                            widget.siblingnameController4,
                            widget.siblingnameController5,
                          ]));
                    },
                    child: const Text('Add more'),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
