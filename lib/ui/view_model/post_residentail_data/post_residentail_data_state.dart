part of 'post_residentail_data_bloc.dart';

@freezed
class PostResidentailDataState with _$PostResidentailDataState {

  factory PostResidentailDataState.initial() {
    return PostResidentailDataState(
      isLoading: false,
      isError: false,
      residentialData: ResidentialData(),
      successorFailure: const None(),
    );
  }
    const factory PostResidentailDataState({
    required bool isLoading,
    required bool isError,
    required ResidentialData residentialData,
    required Option<Either<MainFailure, ResidentialData>> successorFailure,
  }) = _PostResidentailDataState;
}


