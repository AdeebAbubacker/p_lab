import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question2_res_event.dart';
part 'question2_res_state.dart';
part 'question2_res_bloc.freezed.dart';

class Question2ResBloc extends Bloc<Question2ResEvent, Question2ResState> {
  Question2ResBloc() : super(Question2ResState.initial()) {
    on<Sheet>((event, emit) {
     emit(Question2ResState(sheet: true, concrete: false, Tilled: false));
    });
     on<Concrete>((event, emit) {
     emit(Question2ResState(sheet: false, concrete: true, Tilled: false));
    });
     on<Tilled>((event, emit) {
     emit(Question2ResState(sheet: false, concrete: false, Tilled: true));
    });
  }
}
