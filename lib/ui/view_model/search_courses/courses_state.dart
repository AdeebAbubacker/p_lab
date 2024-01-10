part of 'courses_bloc.dart';

@freezed
class CoursesState with _$CoursesState {
  factory CoursesState.initial() {
    return CoursesState(
      isLoading: false,
      isError: false,
      course: SearchCourse(),
      successorFailure: const None(),
    );
  }
  const factory CoursesState({
    required bool isLoading,
    required bool isError,
    required SearchCourse course,
    required Option<Either<MainFailure, SearchCourse>> successorFailure,
  }) = _CoursesState;
}
