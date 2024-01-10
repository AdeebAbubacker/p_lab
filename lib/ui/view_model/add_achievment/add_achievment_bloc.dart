import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/widgets/drop_down_menu.dart';
import 'package:panakj_app/ui/screens/student/screens/academics/widgets/file_picker.dart';
import 'package:panakj_app/ui/screens/student/widgets/input_label.dart';
import 'package:panakj_app/ui/screens/student/widgets/spacer_height.dart';
import 'package:panakj_app/ui/screens/student/widgets/label_inputText.dart';
part 'add_achievment_event.dart';
part 'add_achievment_state.dart';

class AddAchievmentBloc extends Bloc<AddAchievmentEvent, AddAchievmentState> {
  AddAchievmentBloc()
      : super(AddAchievmentState(
            achievmentcards: List.empty(), numberofachievment: 0)) {
    on<AddMoreAchievments>((event, emit) {
      List<Widget> updatedSiblings = List.from(state.achievmentcards);
      int newIndex = updatedSiblings.length;
      final numberofSiblings = newIndex + 1;
      String achievmentID =
          '${DateTime.now().millisecondsSinceEpoch}-$numberofSiblings';
      updatedSiblings.add(_buildachievmentsCard(achievmentID, add));
      emit(AddAchievmentState(
        achievmentcards: updatedSiblings,
        numberofachievment: numberofSiblings,
      ));
    });

    on<DeleteSibling>((event, emit) {
      List<Widget> updatedSiblings = List.from(state.achievmentcards);

      // Find the widget with the specified key and remove it
      updatedSiblings.removeWhere(
        (widget) {
          return widget.key is ValueKey<String> &&
              (widget.key as ValueKey<String>).value == event.achievmentID;
        },
      );

      final numberofSiblings = updatedSiblings.length;

      emit(AddAchievmentState(
        achievmentcards: updatedSiblings,
        numberofachievment: numberofSiblings,
      ));

      print("Deleted sibling with ID: ${event.achievmentID}");
      print("After deletion - Updated siblings: $updatedSiblings");
    });
  }
}

Widget _buildachievmentsCard(
    String achievmentID, void Function(AddAchievmentEvent) add) {
  TextEditingController achievmentController = TextEditingController();

  Key cardKey = ValueKey<String>(achievmentID);
  return Column(
    key: cardKey,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 1,
        width: 380,
        color: const Color.fromARGB(255, 187, 189, 190),
      ),
      const HeightSpacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 247, 247, 247)),
            ),
            onPressed: () {
              add(DeleteSibling(achievmentID: achievmentID));
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
      InputLabel(mytext: 'Category'),
      const MyDropdown(),
      const HeightSpacer(height: 8),
      LabelInputText(
        label: 'Achievment Details',
        maxlines: 3,
        StringInput: achievmentController,
        focusNode: FocusNode(),
      ),
      const HeightSpacer(),
      InputLabel(mytext: 'Upload File'),
      FilePickerScreen(),
      const HeightSpacer(),
    ],
  );
}
