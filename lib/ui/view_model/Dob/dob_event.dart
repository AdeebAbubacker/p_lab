part of 'dob_bloc.dart';

@freezed
class DobEvent with _$DobEvent {
  const factory DobEvent.selectDateEvent({required BuildContext context}) = SelectDateEvent;
}

