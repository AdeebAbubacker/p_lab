import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_school_event.dart';
part 'selected_school_state.dart';
part 'selected_school_bloc.freezed.dart';



class SelectedSchoolBloc extends Bloc<SelectedSchoolEvent, SelectedSchoolState> {
  SelectedSchoolBloc() : super(SelectedSchoolState.initial()) {
    on<_SelectedSchool>((event, emit) {
      emit(SelectedSchoolState.schoolSelected(selectedschool: event.selectedSchool));
    });
  }
}
