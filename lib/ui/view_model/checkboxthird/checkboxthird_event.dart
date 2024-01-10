part of 'checkboxthird_bloc.dart';

@freezed
class CheckboxthirdEvent with _$CheckboxthirdEvent {
   const factory CheckboxthirdEvent.started() = _Started;
  const factory CheckboxthirdEvent.togglealive() = _ToggleAlive;
  const factory CheckboxthirdEvent.togglenotalive() = _ToggleNotAlive;
  const factory CheckboxthirdEvent.togglebedridden() = _Togglebedridden;
  const factory CheckboxthirdEvent.togglenotbedridden() = _Togglenotbedridden;
}