part of 'students_app_form_bloc.dart';

@immutable
class StudentsAppFormState {
  final bool forBankAccountholder;
  final bool forNoAccountUsers;
  final int currentStep;

  const StudentsAppFormState({this.currentStep = 0,this.forBankAccountholder = false, this.forNoAccountUsers = false});
}

// class NextandPrevState extends StudentsAppFormState {
//   final int currentStep;

//   const NextandPrevState({ this.currentStep = 0});
// }




 

