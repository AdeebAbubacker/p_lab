import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_occupation_event.dart';
part 'selected_occupation_state.dart';
part 'selected_occupation_bloc.freezed.dart';



class SelectedOccupationBloc extends Bloc<SelectedOccupationEvent, SelectedOccupationState> {
  SelectedOccupationBloc() : super(SelectedOccupationState.initial()) {
    on<_SelectedOccupation>((event, emit) {
      emit(SelectedOccupationState.occupationSelected(selectedOccupation: event.selectedOccupation));
    });
  }
}
