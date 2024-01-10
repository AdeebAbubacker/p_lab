import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/constant/constants.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/local_widgets/course_bottomsheet.dart';
import 'package:panakj_app/ui/screens/student/screens/family/widgets/local_widgets/lineDivider.dart';
import 'package:panakj_app/ui/screens/student/widgets/horizontal_radiobtn.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_bottomSheet.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_inputText.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';
import 'package:panakj_app/ui/view_model/horizontal_radio_btn/horizontal_radio_btn_bloc.dart';
part 'family_event.dart';
part 'family_state.dart';

class FamilyBloc extends Bloc<FamilyEvent, FamilyState> {
  FamilyBloc()
      : super(const FamilyState(
            siblings: false, nosiblings: false, numberOfSiblings: 0)) {
    on<ForSiblings>((event, emit) {
      emit(FamilyState(
        siblings: true,
        nosiblings: false,
        numberOfSiblings: state.numberOfSiblings,
      ));
    });
    on<FornoSiblings>((event, emit) {
      emit(FamilyState(
        siblings: false,
        nosiblings: true,
        numberOfSiblings: state.numberOfSiblings,
      ));
    });
    // on<AddMoreSiblings>((event, emit) {
    //   List<Widget> updatedSiblings = List.from(state.siblingCards);
    //   int newIndex = updatedSiblings.length;
    //   final numberofSiblings = newIndex + 1;
    //   TextEditingController nameController =
    //       event.siblingNameControllers[newIndex];
    //   String achievmentID =
    //       '${DateTime.now().millisecondsSinceEpoch}-$numberofSiblings';
    //   updatedSiblings.add(_buildachievmentsCard(
    //     achievmentID: achievmentID,
    //     add: add,
    //     genderBloc: HorizontalRadioBtnBloc(),
    //     nameController: nameController,
    //     siblingNameControllers: event.siblingNameControllers,
    //     courseofstudy: 1,
    //     occupation: 1,
    //     qualification: 1,
    //   ));
    //   // updatedSiblings.add(_buildachievmentsCard(achievmentID, add));
    //   emit(FamilyState(
    //     siblingCards: updatedSiblings,
    //     numberOfSiblings: numberofSiblings,
    //     nosiblings: false,
    //     siblings: true,
    //   ));
    // });

    on<AddMoreSiblings>((event, emit) {
      List<Widget> updatedSiblings = List.from(state.siblingCards);
      int newIndex = updatedSiblings.length;
      final numberofSiblings = newIndex + 1;

      // Create a new list of controllers to avoid modifying the original list
      List<TextEditingController> newControllers =
          List.from(event.siblingNameControllers);

      // Create a new controller for the new sibling
      TextEditingController nameController = TextEditingController();
      newControllers.add(nameController);

      String achievmentID =
          '${DateTime.now().millisecondsSinceEpoch}-$numberofSiblings';
      updatedSiblings.add(_buildachievmentsCard(
        achievmentID: achievmentID,
        add: add,
        genderBloc: HorizontalRadioBtnBloc(),
        nameController: nameController,
        siblingNameControllers:
            newControllers, // Pass the new list to the widget
        courseofstudy: 1,
        occupation: 1,
        qualification: 1,
      ));

      emit(FamilyState(
        siblingCards: updatedSiblings,
        numberOfSiblings: numberofSiblings,
        nosiblings: false,
        siblings: true,
      ));
    });

    on<DeleteSibling>((event, emit) {
      List<Widget> updatedSiblings = List.from(state.siblingCards);

      // Find the widget with the specified key and remove it
      updatedSiblings.removeWhere(
        (widget) {
          return widget.key is ValueKey<String> &&
              (widget.key as ValueKey<String>).value == event.siblingID;
        },
      );

      final numberofSiblings = updatedSiblings.length;

      emit(FamilyState(
        siblingCards: updatedSiblings,
        numberOfSiblings: numberofSiblings,
        nosiblings: false,
        siblings: true,
      ));

      print("Deleted sibling with ID: ${event.siblingID}");
      print("After deletion - Updated siblings: $updatedSiblings");
    });
  }

  Widget _buildachievmentsCard(
      {String? achievmentID,
      required TextEditingController nameController,
      required HorizontalRadioBtnBloc genderBloc,
      required int qualification,
      required int courseofstudy,
      required int occupation,
      required List<TextEditingController> siblingNameControllers,
      void Function(FamilyEvent)? add}) {
    TextEditingController achievmentController = TextEditingController();
    int index = siblingNameControllers.indexWhere((controller) =>
        controller.value ==
        siblingNameControllers[siblingNameControllers.length - 1].value);
    Key cardKey = ValueKey<String>(achievmentID.toString());
    return Column(
      key: cardKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const LineDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 247, 247, 247)),
              ),
              onPressed: () {
                if (add != null) {
                  add(DeleteSibling(siblingID: achievmentID!));
                }
                print("Built card with ID: $achievmentID");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.delete_outline_rounded),
                  Text('Remove'),
                ],
              ),
            ),
          ],
        ),
        // LabelInputText(label: 'Name',StringInput: nameController),
        const Padding(
          padding: EdgeInsets.only(top: 5, bottom: 12),
          child: Text('Brother / Sister', style: kfamiltTitleTextColor),
        ),

        LabelInputText(
          label: 'Name',
          StringInput: siblingNameControllers[index],
          focusNode: FocusNode(),
        ),
        // HorizontalRadioBtn(
        //   steps: [
        //     Content(choiceLabel: 'Male'),
        //     Content(choiceLabel: 'Female'),
        //   ],
        //   title: 'Gender',
        // ),
        BlocProvider<HorizontalRadioBtnBloc>(
          key: const Key('siblinggenderBloc2'), // Give a unique key to the bloc
          create: (context) => HorizontalRadioBtnBloc(),
          child: HorizontalRadioBtn(
            steps: [
              Content(choiceLabel: 'Male'),
              Content(choiceLabel: 'Female'),
            ],
            title: 'Gender',
          ),
        ),

        InputLabel(mytext: 'Qualification'),
        labelBottomSheet(
          bottomSheetheight: 0.74,
          title: 'Qualification',
          hintText: 'Search For Occupation / Job',
          listofData: const [
            'No Formal Education',
            'Below SSLC',
            'SSLC',
            'Plus Two',
            'Undergraduate',
            'Postgraduate',
            'M.Phil.',
            'Doctorate (Ph.D.)'
          ],
        ),
        const HeightSpacer(),
        InputLabel(mytext: 'Course of Study'),
        // labelBottomSheet(listofData: const [
        //   'Nil',
        //   'AMIE',
        //   'B Voc Food',
        //   'B.A',
        //   'B.A. Accountancy',
        //   'B.A. Applied Psychology',
        //   'B.A. Economics',
        //   'B.A. English',
        //   'B.A. English Literature',
        //   'B.A. Hindi',
        //   'B.A. History',
        //   'B.A. Malayalam',
        //   'B.A. Music',
        //   'B.A. Sanskrit',
        //   'B.A. Sociology',
        //   'B.Com',
        //   'B.Com Computer Application',
        //   'B.Com Finance and Taxation',
        //   'B.Sc',
        //   'B.Sc',
        //   'B.Sc Agriculture',
        //   'B.Sc Agriculture',
        //   'B.Sc Botany',
        //   'B.Sc Chemistry',
        //   'B.Sc Computer',
        //   'B.Sc Electronics',
        //   'B.Sc Hotel Management',
        //   'B.Sc Mathematics',
        //   'B.Sc Nursing',
        //   'B.Sc Nursing',
        //   'B.Sc Nursing',
        //   'B.Sc Physics',
        //   'B.Sc Taxation',
        //   'B.Sc Zoology',
        //   'B.Tech',
        //   'B.Tech Computer Science',
        //   'B.Tech EEE',
        //   'B.Tech Electronics & Communication',
        //   'B.Tech IT',
        //   'B.Tech Mechanical Engineering',
        //   'B.Tech Space Science',
        //   'B.Voc Industrial Instrumentation & Automation',
        //   'B.Voc Tourism & Hospitality Management',
        //   'BBA',
        //   'BBA LLB',
        //   'BBM',
        //   'BCA',
        //   'BE Agriculture',
        //   'BTTM',
        //   'Comp. Hardware',
        //   'D. Pharm',
        //   'DED',
        //   'Diploma',
        //   'Diploma Eng.',
        //   'Diploma in C.A.',
        //   'Diploma in Chemical Engineering',
        //   'Diploma in Civil Engineering',
        //   'Diploma in Computer',
        //   'Diploma in Computer Engineering',
        //   'Diploma in Computer Science',
        //   'Diploma in Electronics',
        //   'Diploma in Electronics',
        //   'Diploma in Mechanical Engineering',
        //   'Diploma in X-Ray & Radiology',
        //   'General Nursing',
        //   'GNM',
        //   'Hospital Management',
        //   'LLB',
        //   'M.Sc Electrical',
        //   'Nursing',
        //   'Nursing',
        //   'Polytechnic - Electronic & Communications',
        //   'Polytechnic Welding',
        //   'TTE'
        // ], title: 'Course of Study', hintText: 'Search For Occupation / Job'),
        CoursebottomSheet(title: 'Course of Study'),
        const HeightSpacer(),
        InputLabel(mytext: 'Occupation / Job'),
        labelBottomSheet(
            title: 'Occupation Details',
            hintText: 'Search For Occupation / Job'),
        const HeightSpacer(height: 14),
      ],
    );
  }
}
