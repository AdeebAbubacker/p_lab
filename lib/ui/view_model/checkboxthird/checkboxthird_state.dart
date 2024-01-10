part of 'checkboxthird_bloc.dart';

@freezed


class CheckboxthirdState with _$CheckboxthirdState {
   factory CheckboxthirdState.initial({
    required bool alive,
    required bool notalive,
    required bool disabled,
    required bool notdisabled,
  }) = CheckboxthirdStateInitial;
}
