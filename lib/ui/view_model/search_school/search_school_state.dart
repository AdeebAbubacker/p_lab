part of 'search_school_bloc.dart';

@freezed
class SearchSchoolState with _$SearchSchoolState {
  factory SearchSchoolState.initial() {
    return SearchSchoolState(
      isLoading: false,
      isError: false,
      school: SearchSchool(),
      successorFailure: const None(),
    );
  }
    const factory SearchSchoolState({
    required bool isLoading,
    required bool isError,
    required SearchSchool school,
    required Option<Either<MainFailure, SearchSchool>> successorFailure,
  }) = _SearchSchoolState;
}

