part of 'selected_occupation_bloc.dart';

@freezed

class SelectedOccupationState with _$SelectedOccupationState {
  factory SelectedOccupationState.initial() {
    return SelectedOccupationState.occupationSelected(selectedOccupation: 0);
  }

  const factory SelectedOccupationState.occupationSelected({required int selectedOccupation}) =
      _occupationSelected;
}
