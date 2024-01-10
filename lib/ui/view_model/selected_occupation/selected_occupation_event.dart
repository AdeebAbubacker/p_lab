part of 'selected_occupation_bloc.dart';

@freezed
class SelectedOccupationEvent with _$SelectedOccupationEvent {
  const factory SelectedOccupationEvent.started() = _Started;
  const factory SelectedOccupationEvent.selectedOccupation( {required int selectedOccupation}) = _SelectedOccupation;
}