part of 'search_qualification_bloc.dart';

@freezed


class SearchQualificationState with _$SearchQualificationState {
  factory SearchQualificationState.initial() {
    return SearchQualificationState(
      isLoading: false,
      isError: false,
      qualification: SearchQualification(),
      successorFailure: const None(),
    );
  }
  const factory SearchQualificationState({
    required bool isLoading,
    required bool isError,
    required SearchQualification qualification,
    required Option<Either<MainFailure, SearchQualification>> successorFailure,
  }) = _SearchQualificationState;
}