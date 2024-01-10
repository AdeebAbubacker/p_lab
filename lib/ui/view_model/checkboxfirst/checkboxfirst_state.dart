part of 'checkboxfirst_bloc.dart';

@freezed

class CheckboxfirstState with _$CheckboxfirstState {
   factory CheckboxfirstState.initial({
    required bool alive,
    required bool notalive,
    required bool disabled,
    required bool notdisabled,
  }) = CheckboxfirstStateInitial;
}
