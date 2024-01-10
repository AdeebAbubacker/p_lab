import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'students_app_form_event.dart';
part 'students_app_form_state.dart';

class StudentsAppFormBloc
    extends Bloc<StudentsAppFormEvent, StudentsAppFormState> {
  StudentsAppFormBloc()
      : super(const StudentsAppFormState(
            forBankAccountholder: false, forNoAccountUsers: false,currentStep: 0)) {
    on<DoYouHaveBankAccEvent>((event, emit) async {
      emit( StudentsAppFormState(
          forBankAccountholder: true, forNoAccountUsers: false,currentStep: event.currentStep));
    });

    on<ForNoAccBankAccEvent>((event, emit) async {
      emit(const StudentsAppFormState(
          forBankAccountholder: false, forNoAccountUsers: true));
    });
    // on<NextStepEvent>((event, emit) {
    //   emit(NextandPrevState(currentStep: 0));
    // });
  }
}
