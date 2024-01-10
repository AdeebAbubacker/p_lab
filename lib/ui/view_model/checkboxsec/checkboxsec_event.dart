part of 'checkboxsec_bloc.dart';

@freezed
class CheckboxsecEvent with _$CheckboxsecEvent {
  const factory CheckboxsecEvent.started() = _Started;
  const factory CheckboxsecEvent.togglealive() = _ToggleAlive;
  const factory CheckboxsecEvent.togglenotalive() = _ToggleNotAlive;
  const factory CheckboxsecEvent.togglebedridden() = _Togglebedridden;
  const factory CheckboxsecEvent.togglenotbedridden() = _Togglenotbedridden;

}