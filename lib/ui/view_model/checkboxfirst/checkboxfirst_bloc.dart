import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkboxfirst_event.dart';
part 'checkboxfirst_state.dart';
part 'checkboxfirst_bloc.freezed.dart';

class CheckboxfirstBloc extends Bloc<CheckboxfirstEvent, CheckboxfirstState> {
  CheckboxfirstBloc() : super(CheckboxfirstState.initial(alive: false, notalive: false, disabled: false, notdisabled: false)) {
          on<_ToggleAlive>((event, emit) async {
      emit(state.copyWith(
        alive: true,
        notalive: false,
      ));
    });
    on<_ToggleNotAlive>((event, emit) async {
      emit(state.copyWith(
        alive: false,
        notalive: true,
        notdisabled: true,
        disabled: false,
      ));
    });
    on<_Togglebedridden>((event, emit) async {
      if (state.notdisabled && state.notalive) {
        emit(state);
      } else {
        emit(state.copyWith(
          disabled: true,
          notdisabled: false,
        ));
      }
    });
    on<_Togglenotbedridden>((event, emit) async {
      emit(state.copyWith(
        disabled: false,
        notdisabled: true,
      ));
    });
  
  }
}
