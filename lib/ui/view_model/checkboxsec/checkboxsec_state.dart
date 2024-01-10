part of 'checkboxsec_bloc.dart';

@freezed
class CheckboxsecState with _$CheckboxsecState {
   factory CheckboxsecState.initial({
    required bool alive,
    required bool notalive,
    required bool disabled,
    required bool notdisabled,
  }) = CheckboxsecStateInitial;
}