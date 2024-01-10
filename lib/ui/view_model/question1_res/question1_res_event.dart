part of 'question1_res_bloc.dart';

@freezed
class Question1ResEvent with _$Question1ResEvent {
  const factory Question1ResEvent.started() = _Started;
  const factory Question1ResEvent.toggleOwnHouseEvent() = ToggleOwnHouseEvent;
  const factory Question1ResEvent.toggleRentalHouseEvent() = ToggleRentalHouseEvent;
}

