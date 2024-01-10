// -------------------- 1st Card ------------------------------------------

// ignore: must_be_immutable
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:panakj_app/ui/screens/student/widgets/do_you_have_bankaccount.dart';
import 'package:panakj_app/ui/screens/student/widgets/enterDOB.dart';
import 'package:panakj_app/ui/screens/student/widgets/horizontal_radiobtn.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_email.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_inputText.dart';
import 'package:panakj_app/ui/screens/student/widgets/labul_NumericalText.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';

class PersonalDetailsCard extends StatefulWidget {
  bool mybool;
  final TextEditingController nameController;
  FocusNode infonamefocusNode;
  FocusNode addressfocusNode;
  FocusNode numericalfocusnode;
  FocusNode emailfocusnode;
  final TextEditingController addressController;
  final TextEditingController phoneNoController;
  final TextEditingController emailController;
  final width;
  PersonalDetailsCard({
    super.key,
    this.width,
    required this.mybool,
    required this.numericalfocusnode,
    required this.nameController,
    required this.infonamefocusNode,
    required this.addressfocusNode,
    required this.emailfocusnode,
    required this.addressController,
    required this.phoneNoController,
    required this.emailController,
  });

  @override
  State<PersonalDetailsCard> createState() => _PersonalDetailsCardState();
}

class _PersonalDetailsCardState extends State<PersonalDetailsCard> {
  String? fileName = '';
  String? filePath = '';
  bool myVisibility = false;

  void _openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        filePath = result.files.single.path!;
        fileName = basename(filePath!);
        // ignore: avoid_print
        print("Selected file: $fileName");
        _visible();
      });
    } else {}
  }

  void _visible() {
    setState(() {
      myVisibility = fileName != '';
    });
  }

  void _deleteFile() {
    setState(() {
      filePath = '';
      fileName = '';
      _visible();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelInputText(
            label: 'Name',
            StringInput: widget.nameController,
            focusNode: widget.infonamefocusNode,
          ),
          const HeightSpacer(height: 14),
          HorizontalRadioBtn(
            steps: [
              Content(choiceLabel: 'Male'),
              Content(choiceLabel: 'Female'),
            ],
            title: 'Gender',
          ),
          const HeightSpacer(height: 14),
          const DOBPicker(),
          const HeightSpacer(height: 14),
          LabelNumericalText(
              numericalfocusnode: widget.numericalfocusnode,
              mytext: 'Phone no',
              numController: widget.phoneNoController),
          const HeightSpacer(height: 14),
          LabelEmail(
            labelText: 'email',
            emailController: widget.emailController,
            emailfocusnode: widget.emailfocusnode,
          ),
          const HeightSpacer(height: 14),
          Container(
            width: 333,
            height: 90,
            color: const Color.fromARGB(115, 239, 239, 239),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 100,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromARGB(31, 79, 79, 79)),
                    borderRadius: const BorderRadius.all(Radius.circular(1)),
                  ),
                  child: myVisibility
                      ? Image.file(
                          File(filePath!),
                          fit: BoxFit.cover,
                        )
                      : const Icon(
                          Icons.person_2_outlined,
                          color: Colors.black12,
                          size: 70,
                        ),
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                        'Please upload square image, size less than 100KB',
                        style: TextStyle(fontSize: 8)),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                            onPressed: _openFilePicker,
                            child: const Text('Choose File')),
                        const SizedBox(width: 30),
                        // const Text(
                        //   'No file choosen',
                        //   style: TextStyle(fontSize: 8, color: Colors.grey),
                        // )
                        filePath!.isEmpty
                            ? const Text(
                                'No file choosen',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.grey),
                              )
                            : IconButton(
                                onPressed: _deleteFile,
                                icon: const Icon(
                                  Icons.delete,
                                  color: Color.fromARGB(255, 253, 53, 39),
                                ),
                              )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const HeightSpacer(height: 14),
          LabelInputText(
            label: 'Address',
            maxlines: 3,
            StringInput: widget.addressController,
            focusNode: widget.addressfocusNode,
          ),
          const DoYouHaveBankAcc(),
        ],
      ),
    );
  }
}
