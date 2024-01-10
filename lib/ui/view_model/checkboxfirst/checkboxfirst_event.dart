part of 'checkboxfirst_bloc.dart';

@freezed
class CheckboxfirstEvent with _$CheckboxfirstEvent {
    const factory CheckboxfirstEvent.started() = _Started;
  const factory CheckboxfirstEvent.togglealive() = _ToggleAlive;
  const factory CheckboxfirstEvent.togglenotalive() = _ToggleNotAlive;
  const factory CheckboxfirstEvent.togglebedridden() = _Togglebedridden;
  const factory CheckboxfirstEvent.togglenotbedridden() = _Togglenotbedridden;
}