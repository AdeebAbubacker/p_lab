part of 'question2_res_bloc.dart';

@freezed
class Question2ResEvent with _$Question2ResEvent {
  const factory Question2ResEvent.started() = _Started;
  const factory Question2ResEvent.sheet() = Sheet;
  const factory Question2ResEvent.concrete() = Concrete;
  const factory Question2ResEvent.tilled() = Tilled;
}

