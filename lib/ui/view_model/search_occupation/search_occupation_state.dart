part of 'search_occupation_bloc.dart';

@freezed


class SearchOccupationState with _$SearchOccupationState {
  factory SearchOccupationState.initial() {
    return SearchOccupationState(
      isLoading: false,
      isError: false,
      occupation: OccupationData(),
      successorFailure: const None(),
    );
  }
  const factory SearchOccupationState({
    required bool isLoading,
    required bool isError,
    required OccupationData occupation,
    required Option<Either<MainFailure, OccupationData>> successorFailure,
  }) = _SearchOccupationState;
}
