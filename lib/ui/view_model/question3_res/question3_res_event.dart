part of 'question3_res_bloc.dart';

@freezed
class Question3ResEvent with _$Question3ResEvent {
  const factory Question3ResEvent.started() = _Started;
  const factory Question3ResEvent.pipewater() = Pipewater;
  const factory Question3ResEvent.wellwater() = Wellwater;
  const factory Question3ResEvent.othersource() = Othersource;
}
