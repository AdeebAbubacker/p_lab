part of 'question3_res_bloc.dart';

@freezed
class Question3ResState with _$Question3ResState {
   factory Question3ResState.initial() {
    return Question3ResState(
      pipewater: false,
      wellwater: false,
      othersource: false,
    );
  }
    const factory Question3ResState({
    required bool pipewater,
    required bool wellwater,
    required bool othersource,
  }) = _Question3ResState;
}


 


