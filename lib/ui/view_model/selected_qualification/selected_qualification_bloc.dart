import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_qualification_event.dart';
part 'selected_qualification_state.dart';
part 'selected_qualification_bloc.freezed.dart';



class SelectedQualificationBloc extends Bloc<SelectedQualificationEvent, SelectedQualificationState> {
  SelectedQualificationBloc() : super(SelectedQualificationState.initial()) {
    on<_SelectedQualification>((event, emit) {
      emit(SelectedQualificationState.qualificationSelected(selectedqualification: event.selectedqualification));
    });
  }
}

