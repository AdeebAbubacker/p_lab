part of 'selected_qualification_bloc.dart';

@freezed

class SelectedQualificationState with _$SelectedQualificationState {
  factory SelectedQualificationState.initial() {
    return SelectedQualificationState.qualificationSelected(selectedqualification: 0);
  }

  const factory SelectedQualificationState.qualificationSelected({required int selectedqualification}) =
      _qualificationSelected;
}