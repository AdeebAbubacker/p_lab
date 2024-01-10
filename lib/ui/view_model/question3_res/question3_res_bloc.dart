import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question3_res_event.dart';
part 'question3_res_state.dart';
part 'question3_res_bloc.freezed.dart';

class Question3ResBloc extends Bloc<Question3ResEvent, Question3ResState> {
  Question3ResBloc() : super(Question3ResState.initial()) {
    on<Pipewater>((event, emit) {
      emit(Question3ResState(pipewater: true, wellwater: false, othersource: false));
    });
     on<Wellwater>((event, emit) {
      emit(Question3ResState(pipewater: false, wellwater: true, othersource: false));
    });
     on<Othersource>((event, emit) {
      emit(Question3ResState(pipewater: false, wellwater: false, othersource: true));
    });
  }
}
