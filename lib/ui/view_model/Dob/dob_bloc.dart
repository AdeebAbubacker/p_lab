import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dob_event.dart';
part 'dob_state.dart';
part 'dob_bloc.freezed.dart';

class DobBloc extends Bloc<DobEvent, DobState> {
  DateTime selectedDate = DateTime.now();

  DobBloc() : super(DOBSelectedState(selectedDate: DateTime.now())) {
    on<SelectDateEvent>(
      (event, emit) async {
        final DateTime? picked = await showDatePicker(
          context: event.context,
          initialDate: state.selectedDate,
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );

        if (picked != null) {
          selectedDate = picked;
          emit(DobState.dobSelectedState(selectedDate: picked));
            print('Selected Date: ${(selectedDate)}');
        }
      },
      
    );
  }
}
