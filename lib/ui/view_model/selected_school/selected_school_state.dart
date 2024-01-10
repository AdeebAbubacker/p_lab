part of 'selected_school_bloc.dart';

@freezed
// class SelectedSchoolState with _$SelectedSchoolState {
//   const factory SelectedSchoolState.initial() = _Initial;
// }

class SelectedSchoolState with _$SelectedSchoolState {
  factory SelectedSchoolState.initial() {
    return SelectedSchoolState.schoolSelected(selectedschool: 0);
  }

  const factory SelectedSchoolState.schoolSelected({required int selectedschool}) =
      _schoolSelected;
}
