part of 'get_bank_bloc.dart';

@freezed
class GetBankState with _$GetBankState {
  factory GetBankState.initial() {
    return GetBankState(
      isLoading: false,
      isError: false,
      bank: SearchBank(),
      successorFailure: const None(),
    );
  }
  const factory GetBankState({
    required bool isLoading,
    required bool isError,
    required SearchBank bank,
    required Option<Either<MainFailure, SearchBank>> successorFailure,
  }) = _GetBankState;
}
