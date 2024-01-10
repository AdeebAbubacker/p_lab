part of 'question1_res_bloc.dart';

@freezed
class Question1ResState with _$Question1ResState {
   factory Question1ResState.initial() {
    return Question1ResState(
      ownHouse: false,
      rentalHouse: false,
    );
  }
    const factory Question1ResState({
    required bool ownHouse,
    required bool rentalHouse,

  }) = _Question1ResState;
}

 

