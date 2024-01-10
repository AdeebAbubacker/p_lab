import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question1_res_event.dart';
part 'question1_res_state.dart';
part 'question1_res_bloc.freezed.dart';

class Question1ResBloc extends Bloc<Question1ResEvent, Question1ResState> {
  Question1ResBloc() : super(Question1ResState.initial()) {
    on<ToggleOwnHouseEvent>((event, emit) {
      emit(Question1ResState(ownHouse: true, rentalHouse: false));
    });
     on<ToggleRentalHouseEvent>((event, emit) {
      emit(Question1ResState(ownHouse: false, rentalHouse: true));
    });
  }
}
