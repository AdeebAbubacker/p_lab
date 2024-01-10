part of 'academic_bloc.dart';

@freezed
class AcademicState with _$AcademicState {
  
    factory AcademicState.initial() {
    return AcademicState(
      isLoading: false,
      isError: false,
      academicData: AcademicDataModel(),
      successorFailure: const None(),
    );
  }

  const factory AcademicState({
    required bool isLoading,
    required bool isError,
    required AcademicDataModel academicData,
    required Option<Either<MainFailure, AcademicDataModel>> successorFailure,
  }) = _AcadenicState;
}
