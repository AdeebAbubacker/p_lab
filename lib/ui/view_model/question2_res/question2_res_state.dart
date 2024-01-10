part of 'question2_res_bloc.dart';

@freezed
class Question2ResState with _$Question2ResState {
  factory Question2ResState.initial() {
    return Question2ResState(
      sheet: false,
      concrete: false,
      Tilled: false,
    );
  }
  const factory Question2ResState({
    required bool sheet,
    required bool concrete,
    required bool Tilled,
  }) = _Question2ResState;
}
