part of 'dob_bloc.dart';

@freezed
class DobState with _$DobState {
  factory DobState.initial() {
    return  DobState.dobSelectedState(selectedDate: DateTime.now());
  }
  const factory DobState.dobSelectedState({required DateTime selectedDate}) =
      DOBSelectedState;
}
