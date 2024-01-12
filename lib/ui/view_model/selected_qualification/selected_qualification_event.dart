part of 'selected_qualification_bloc.dart';

@freezed
class SelectedQualificationEvent with _$SelectedQualificationEvent {
  const factory SelectedQualificationEvent.started() = _Started;
  const factory SelectedQualificationEvent.selectedqualification( {required int selectedqualification}) = _SelectedQualification;
}