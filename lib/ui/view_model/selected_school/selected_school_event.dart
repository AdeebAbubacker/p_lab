part of 'selected_school_bloc.dart';

@freezed
class SelectedSchoolEvent with _$SelectedSchoolEvent {
  const factory SelectedSchoolEvent.started() = _Started;
   const factory SelectedSchoolEvent.selectedSchool( {required int selectedSchool}) = _SelectedSchool;
}