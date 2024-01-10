import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/colors/colors.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/widgets/file_picker.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/widgets/drop_down_menu.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_inputText.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';
import 'package:panakj_app/ui/view_model/add_achievment/add_achievment_bloc.dart';

class AchievmentsCard extends StatefulWidget {
  final TextEditingController achievmentController = TextEditingController();
  final Widget siblings;
  final bool mybool;
  final FocusNode focusNode;
  final width;
  AchievmentsCard({
    super.key,
    this.width,
    required this.mybool,
    required this.focusNode,
    this.siblings = const Text(''),
  });

  @override
  State<AchievmentsCard> createState() => _AchievmentsCardState();
}

class _AchievmentsCardState extends State<AchievmentsCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<AddAchievmentBloc, AddAchievmentState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputLabel(mytext: 'Category'),
              const MyDropdown(),
              const HeightSpacer(height: 8),
              LabelInputText(
                label: 'Achievment Details',
                maxlines: 3,
                StringInput: widget.achievmentController,
                focusNode: widget.focusNode,
              ),
              const HeightSpacer(),
              InputLabel(mytext: 'Upload File'),
              FilePickerScreen(),
              const HeightSpacer(),
              Column(
                children: state.achievmentcards.toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(kvioletColor3)),
                    onPressed: () {
                      context
                          .read<AddAchievmentBloc>()
                          .add(AddMoreAchievments());
                    },
                    child: const Text('ADD ACHIEVMENT'),
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
